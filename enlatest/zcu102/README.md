# ZCU102 Energy Monitor

This implementation of the `energymon` interface reads from INA-226 power
sensors on Xilinx ZCU102 evaluation boards running Linux.
The power sensors are polled at regular intervals to estimate energy
consumption.

Thanks to Connor Imes for the odroid sysfs implementation on which this
implementation is based.

## Prerequisites

You must be using a ZCU102 board running PetaLinux.

## Usage

No special setup is required.

## Linking

Add the following to your link flags:

```
-lenergymon-zcu102 -lpthread
```

You will also need `-lrt` for glibc versions before 2.17.
