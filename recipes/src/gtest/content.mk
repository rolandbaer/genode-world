MIRROR_FROM_REP_DIR = lib/import/import-gtest.mk lib/mk/gtest.mk

content: $(MIRROR_FROM_REP_DIR) src/lib/googletest/googletest/src/target.mk LICENSE

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/googletest)

src/lib/googletest/googletest/src/target.mk:
	mkdir -p src/lib/googletest/googletest/src
	cp -r $(PORT_DIR)/src/lib/googletest/googletest/src/*.cc \
	      $(PORT_DIR)/src/lib/googletest/googletest/src/*.h \
		src/lib/googletest/googletest/src
	echo "LIBS := gtest" > $@

LICENSE:
	cp $(PORT_DIR)/src/lib/googletest/googletest/LICENSE $@
