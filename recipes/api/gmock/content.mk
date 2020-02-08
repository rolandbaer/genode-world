content: include/gmock lib/symbols/gmock LICENSE

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/googletest)

include/gmock:
	mkdir -p $@
	cp -r $(PORT_DIR)/$@/* $@

lib/symbols/gmock:
	$(mirror_from_rep_dir)

LICENSE:
	cp $(PORT_DIR)/src/lib/googletest/googlemock/LICENSE $@
