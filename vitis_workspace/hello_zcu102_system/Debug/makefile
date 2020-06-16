#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = /home/whitney/zcu102_demo/vitis_workspace/zcu102_demo/export/zcu102_demo/zcu102_demo.xpfm
SYS_CONFIG = zcu102_demo
DOMAINS = standalone_domain
BIF_PATH = /home/whitney/zcu102_demo/vitis_workspace/hello_zcu102_system/Debug/system.bif

BITSTREAM_PATH = /home/whitney/zcu102_demo/vitis_workspace/hello_zcu102/_ide/bitstream/zcu102_bd_wrapper.bit
SD_FILES = --elf /home/whitney/zcu102_demo/vitis_workspace/hello_zcu102/Debug/hello_zcu102.elf,psu_cortexa53_0

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:32999; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


