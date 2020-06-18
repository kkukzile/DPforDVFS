#include<bits/stdc++.h>
// input two arguments 
//number of frequencies is fixed = 2-19  =18 freuencies 
//input number of  layers nl
using namespace std;

vector<vector<float>> ans;
vector<vector<float>> timev;
vector<vector<float>> timevals;
vector<vector<int>> pattern;
vector<float> tempmax;
vector<int> tempx;
vector<int> tempy;



float maxv(vector<float> tempmax,std::vector<int> tempx,std::vector<int> tempy,int tempref){
	int len=tempmax.size();
	float max=INT_MIN;
	int maxx,maxy;
	for(int i=0;i<len;i++){
		if(tempmax[i]>max){
			max=tempmax[i];
			maxx=tempx[i];
			maxy=tempy[i];

		}
	}timev[tempref][maxy]=timevals[maxx][maxy]+timev[tempref-maxx][maxy+1];
	pattern[tempref][maxy]=maxx;
	// if(len==1)
		// cout<<max<<" "<<tempmax[0]<<endl;
	return max;

}
void clearv(){
	tempmax.clear();
	tempx.clear(); 
	tempy.clear();
}

int main(int argc,char* argv[]){
	//argument is number of layers
	int nf=18*atoi(argv[1]);
	int nl=atoi(argv[1]);
	float energy[nf+1][nl];
	vector<float> temp;
	for(int i=0;i<nl;i++){
		temp.push_back(0);
	}
	vector<int> temp2;
	for(int i=0;i<nl;i++){
		temp2.push_back(0);
	}


	for(int i=0;i<=nf;i++){
		ans.push_back(temp);
		timev.push_back(temp);
		timevals.push_back(temp);
		pattern.push_back(temp2);
		
	}


	string text;
	ifstream f("/home/kritikuk/Desktop/Thesis/NUSWork/DPSol/GNEnergy.txt");
	int col=0;
	int row=2;

	while(getline(f,text) && col<nl)
	{
		istringstream ss(text);
		row=2;
		do{
			string word;
			ss>>word;
			energy[row][col]=-1*stof(word);
			row++;
		}while (ss && row<=19);
		col++;
	}
		
	for(int i=0;i<=nf;i++){
		for(int j=0;j<nl;j++){
			if(i>=15 && i<=19)
				break;
			else{
				energy[i][j]=-9999;
			}
		}
	}
	f.close();

	ifstream f2("/home/kritikuk/Desktop/Thesis/NUSWork/DPSol/GNLatency.txt");
	col=0;
	row=2;

	while(getline(f2,text) && col<nl)
	{
		istringstream ss(text);
		row=2;
		do{
			string word;
			ss>>word;
			timevals[row][col]=stof(word);
			row++;
		}while (ss && row<=19);
		col++;
	}
		
	for(int i=0;i<=nf;i++){
		for(int j=0;j<nl;j++){
			if(i>=16 && i<=19)
				break;
			else{
				timevals[i][j]=9999;
			}
		}
	}
	f2.close();

	//assuming energy table  consisiting of energy per frequency data which we refer to.


	int tempref;

	for(int i=0;i<=nf;i++)
		{ans[i][nl-1]=energy[i][nl-1];
					timev[i][nl-1]=timevals[i][nl-1];
			}
	for(int i=nl-2;i>=0;i--){
		for(int j=0;j<=nf;j++){
			if(j==0 ||j==1)
				ans[j][i]=energy[j][i];
			else
			{	clearv();
				tempref=j;
				for(int k=j;k>=2;k--){
					tempmax.push_back(energy[k][i]+ans[j-k][i+1]);
					tempx.push_back(k);
					tempy.push_back(i);
					
					}
				ans[j][i]=maxv(tempmax,tempx,tempy,tempref);


			}


		}


	}
	// 	cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<timev[i][j]<<"~~";
	// 	cout<<endl;
	// }
	// cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<ans[i][j]<<"~~";
	// 	cout<<endl;
	// }
			// 	cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<timev[i][j]<<"~~";
	// 	cout<<endl;
	// }
	// cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<ans[i][j]<<"~~";
	// 	cout<<endl;
	// }
	// }
	// cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<timevals[i][j]<<"~~";
	// 	cout<<endl;
	// // }
	// cout<<"done"<<endl;
	// for(int i=0;i<=nf;i++){
	// 	for(int j=0;j<nl;j++)
	// 		cout<<pattern[i][j]<<"~~";
	// 	cout<<endl;
	// }
	cout<<"done"<<endl;
	int tt=195;
	int i=0;
	while(tt>=0 && i<12){
		cout<<pattern[tt][i]<<" ";
		if(i==11)
			cout<<tt;
		tt=tt-pattern[tt][i];
		i++;

	}




	return 0;
}
