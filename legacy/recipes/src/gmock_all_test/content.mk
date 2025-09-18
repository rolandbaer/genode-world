MIRROR_FROM_REP_DIR := src/test/gmock_all_test/target.mk

content: $(MIRROR_FROM_REP_DIR)

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/googletest)

MIRROR_FROM_PORT_DIR := src/lib/googletest/googlemock/test src/lib/googletest/googletest/src/gtest-internal-inl.h

content: $(MIRROR_FROM_PORT_DIR)

$(MIRROR_FROM_PORT_DIR):
	mkdir -p $(dir $@)
	cp -r $(PORT_DIR)/$@ $(dir $@)

content: LICENSE

LICENSE:
	cp $(PORT_DIR)/src/lib/googletest/LICENSE $@
