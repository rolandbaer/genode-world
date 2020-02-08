MIRROR_FROM_REP_DIR = lib/import/import-gmock.mk lib/mk/gmock.mk

content: $(MIRROR_FROM_REP_DIR) src/lib/googletest/googlemock/src/target.mk LICENSE

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/googletest)

src/lib/googletest/googlemock/src/target.mk:
	mkdir -p src/lib/googletest/googlemock/src
	cp -r $(PORT_DIR)/src/lib/googletest/googlemock/src/*.cc \
		src/lib/googletest/googlemock/src
	echo "LIBS := gmock" > $@

LICENSE:
	cp $(PORT_DIR)/src/lib/googletest/googlemock/LICENSE $@
