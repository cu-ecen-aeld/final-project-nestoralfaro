MAIN_VERSION = e041873055299464dd718ee3b5e2e8a317d80095
MAIN_SITE = git@github.com:nestoralfaro/final-project-assignment-nestoralfaro.git
MAIN_SITE_METHOD = git

define MAIN_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MAIN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/openspot $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/openspot/openspot-start-stop.sh $(TARGET_DIR)/etc/init.d/S99openspot
endef

$(eval $(generic-package))
