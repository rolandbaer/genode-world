TARGET = gtest_all_test

GTEST_DIR := $(call select_from_ports,googletest)/src/lib/googletest/googletest

SRC_CC = gtest_main.cc gtest_all_test.cc

vpath gtest_main.cc     $(GTEST_DIR)/src
vpath %.cc              $(GTEST_DIR)/test

INC_DIR += $(GTEST_DIR)

LIBS = posix stdcxx gtest

CC_CXX_WARN_STRICT = -Wno-dangling-else

CC_OPT += -fno-var-tracking-assignments
