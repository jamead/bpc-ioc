TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = bpc
# bpc.dbd will be created and installed
DBD += bpc.dbd

# bpc.dbd will be made up from these files:
bpc_DBD += base.dbd

# Include dbd files from all support applications:
bpc_DBD += pscCore.dbd

# Add all the support libraries needed by this IOC
bpc_LIBS += pscCore

# bpc_registerRecordDeviceDriver.cpp derives from bpc.dbd
bpc_SRCS += bpc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
bpc_SRCS_DEFAULT += bpcMain.cpp
bpc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#bpc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
bpc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

