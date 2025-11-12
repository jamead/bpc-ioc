#!../../bin/linux-x86_64/bpc

< envPaths

epicsEnvSet("IOCNAME", "BPC")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/bpc.dbd"
bpc_registerRecordDeviceDriver pdbbase


var("PSCDebug", "5")

# Listen on 0.0.0.0:1234  (pass zero for random port)
# for messages coming from "device" localhost:5000


createPSCUDP("pscudp1", "192.168.1.88", 5000, 1234)
createPSCUDP("pscudp2", "192.168.1.89", 5000, 1235)

## Load record instances
dbLoadRecords("db/bpc.db","P=$(IOCNAME), NO=1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

