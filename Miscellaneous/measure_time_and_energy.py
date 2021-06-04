# This program is used to get average energy and average time for the case of multiple runs per inference.
# The program expects the files to be in a particular format:
# 	1. Outpen.txt has output from exec.exe which prints time, and power/energy value from the sensor.
# 	2. Outpcl.txt has output from the inference run and prints start and end time for each layer in the network.
# If you're running for multiple frequencies/ governors in the same script and there are multiple iterations
# per run then the required format is :
#
# For outecl.txt :
#  [energy] [time] (example 0.123 123456789)
#  ......
# (Code does not handle any error which arises out of deviation from this format - incomplete lines, blank spaces, empty lines etc)
#
# For outpcl.txt :
#  0 (means next iteration #1)
#  [start time layer 1]
#  [end time layer 1]
#  [start time layer 2]
#  ...
#  0 (means next iteration #2)
#  ...
#  1 (iterations of this frequency over, moving to next frequency #1)
#  0 (means next iteration #1)
#  ...
#  1 (iterations of this frequency over, moving to next frequency #last)
#

from collections import defaultdict

mydict=defaultdict(list)
timedict=defaultdict(list)
timeans=defaultdict(list)
powerans=defaultdict(list)

def vectoriz(index,sumvv):
	# print index
	# print sumv
	mydict[index].append(sumvv)

def clr():
	mydict.clear()
	timedict.clear()

	# del dt[:]

def printvalsenergytime():

	countp=0
	ans=[]
	anst=[]
	ansf=[]
	b=0
	# energy calculation of energy and printing average energy and time
	for (k1,v1),(k2,v2) in zip(mydict.items(),timedict.items()):
		ans=[a*b for a,b in zip(v1,v2)]
		anst.append(sum(v2))
		ansf.append(sum(ans))
	# print(anst[0],ansf[0])
	print ((sum(anst)-anst[0])/99000.0)
	print ((sum(ansf)-ansf[0])/99000.0)

def printvalsperlayer():

	countp=0
	ans=[]
	anst=[]
	ansf=[]
	b=0
	powerans.clear()
	timeans.clear()
	# for (k1,v1) in mydict.items():
	# 	print (v1)
	for k2,v2 in mydict.items():
		for a in range(len(v2)):
			powerans[a].append(v2[a])

	print("power")
	for x,y in powerans.items():
		print ((sum(y)-y[0])/99.0)
		# here 99 is the number of iterations per run

	for k2,v2 in timedict.items():
		for a in range(len(v2)):
			timeans[a].append(v2[a])
	# print (timeans)
	print("time")
	for x,y in timeans.items():
		print ((sum(y)-y[0])/99.0)
		# here 99 is the number of iterations per run




def printvals3():

	countp=0
	ans=[]
	anst=[]
	ansf=[]
	b=0
	# for (k1,v1) in mydict.items():
	# 	print (v1)
	# print()
	for (k2,v2) in timedict.items():
		print (v2)
	print()

# a= "0.945 12345535"
# print(getime(a)) //12345535
# print(getval(a)) //0.945

def getime(a):
	b=a.split(" ")
	return int(b[1])
# mydict.items(),timedict.items()

def getval(a):
	b=a.split(" ")
	b=b[0]
	return float(b)


# keep filepath1 as o/p of exec (energymon) and filepath2 as o/p of inference run
filepath1 = '/home/kritikuk/Desktop/Thesis/NUSWork/outecl.txt'
filepath2='/home/kritikuk/Desktop/Thesis/NUSWork/outpcl.txt'
sumv=0
count=0
countno=0
timeind=0
countind=0
with open(filepath2) as fp2:
	with open(filepath1) as fp1:
		line=fp1.readline()
		while True:
			line2=fp2.readline()
			if (line2==""):
				break

			elif(int(line2)==1):
				# 1 means that frequency runs are over, prints the result for that frequency
				# printvals()
				printvalsperlayer()
				clr()
				countind=0

			elif(int(line2)==0):
				# 0 means we have covered one iteration, we read next two lines and they are the
				# start and end timings of the layer, we append difference of the two in vector timedict
				# which is to record execution time per layer for all iterations.
				start=int(fp2.readline())
				end=int(fp2.readline())
				countind+=1
				timeind+=1
				# del dt[:]
				timedict[timeind].append((end-start)/1000)
				# We check for values in outecl.txt and see if any of the time values lies inbetween the start
				# and end time, if yes we read it's power and add to vector. If not, we keep reading lines
				# in outecl.txt till we find such values
				while(getime(line)<start):
					# countno+=1
					prev=line
					line=fp1.readline()
				while(getime(line)>=start and getime(line)<=end):
					sumv+=getval(line)
					count+=1
					prev=line
					line=fp1.readline()

			else:
				start=int(line2)
				end=int(fp2.readline())
				# countind+=1
				timedict[timeind].append((end-start)/1000)
				# print((end-start)/1000)
				while(getime(line)<start):
					countno+=1
					prev=line
					line=fp1.readline()

				while(getime(line)>=start and getime(line)<=end):
					sumv+=getval(line)
					count+=1
					prev=line
					line=fp1.readline()

			if(count==0 and int(line2)!=1):
				# print countind,prev,line,sprintvalstart,end
				# print(getval(prev)/2+getval(line)/2)
				vectoriz(countind,getval(prev)/2+getval(line)/2)


			elif(count!=0 and int(line2)!=1):
				# print(sumv/count)
				vectoriz(countind,sumv/count)
			sumv=0
			count=0
			countno=0
