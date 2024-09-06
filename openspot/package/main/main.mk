MAIN_VERSION = b000661c969532c68d4dbe20ec86677f76232988
MAIN_SITE = git@github.com:nestoralfaro/final-project-assignment-nestoralfaro.git
MAIN_SITE_METHOD = git

MYBIN = openspot
define MAIN_BUILD_CMDS
	$(TARGET_CXX) $(@D)/main.cpp -o $(@D)/$(MYBIN) \
		-I$(STAGING_DIR)/usr/include/opencv4/ \
		-L$(STAGING_DIR)/usr/lib/ -lopencv_core -lopencv_imgproc -lopencv_videoio
endef

define MAIN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/$(MYBIN) $(TARGET_DIR)/usr/bin/$(MYBIN)
endef

$(eval $(generic-package))
