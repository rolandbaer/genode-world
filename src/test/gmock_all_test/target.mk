TARGET = gmock_all_test

GMOCK_DIR := $(call select_from_ports,googletest)/src/lib/googletest/googlemock
GTEST_DIR := $(call select_from_ports,googletest)/src/lib/googletest/googletest

SRC_CC = gmock_all_test.cc

vpath %.cc $(GMOCK_DIR)/test

INC_DIR += $(GMOCK_DIR)
INC_DIR += $(GTEST_DIR)

LIBS = posix stdcxx gtest gmock

CC_CXX_WARN_STRICT = -Wno-unused-function -Wno-deprecated-declarations -Wno-infinite-recursion

CC_OPT += -fno-var-tracking-assignments
