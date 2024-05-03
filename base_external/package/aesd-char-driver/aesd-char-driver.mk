
##############################################################
#
# AESD Character Driver
#
##############################################################

AESD_CHAR_DRIVER_VERSION = '65595de636d20af68beb55ce504238edda96c0d7'

AESD_CHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-asabbagh4.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES
AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load   $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
