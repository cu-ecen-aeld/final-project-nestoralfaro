MAIN_VERSION = e749ea36803b07b68f20282e00afcc6c34f95941
MAIN_SITE = git@github.com:nestoralfaro/final-project-assignment-nestoralfaro.git
MAIN_SITE_METHOD = git

define MAIN_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MAIN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/openspot $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
