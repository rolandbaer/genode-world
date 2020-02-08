GTEST_PORT_DIR := $(call select_from_ports,googletest)

INC_DIR += $(REP_DIR)/src/lib/googletest/include
INC_DIR += $(GTEST_PORT_DIR)/include
