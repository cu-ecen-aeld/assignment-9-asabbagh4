
##############################################################
#
# AESD Character Driver
#
##############################################################

AESD_CHAR_DRIVER_VERSION = '4326572b37494ba1e34ed88f90ddbd8a1cba2bf0'

AESD_CHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-asabbagh4.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES
AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
