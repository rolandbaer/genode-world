TARGET = gtest_samples

GTEST_DIR := $(call select_from_ports,googletest)/src/lib/googletest/googletest

SRC_CC = gtest_main.cc sample1.cc sample1_unittest.cc

vpath gtest_main.cc       $(GTEST_DIR)/src
vpath %.cc                $(GTEST_DIR)/samples

LIBS = posix stdcxx gtest

CC_CXX_WARN_STRICT = -Wextra -Wno-effc++ -Werror -Wno-suggest-override
