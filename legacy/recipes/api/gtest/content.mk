content: include/gtest lib/symbols/gtest LICENSE

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/googletest)

include/gtest:
	mkdir -p $@
	cp -r $(PORT_DIR)/$@/* $@
	cp -r $(REP_DIR)/src/lib/googletest/$@/* $@

lib/symbols/gtest:
	$(mirror_from_rep_dir)

LICENSE:
	cp $(PORT_DIR)/src/lib/googletest/googletest/LICENSE $@
