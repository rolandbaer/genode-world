GMOCK_DIR := $(call select_from_ports,googletest)/src/lib/googletest/googlemock

include $(REP_DIR)/lib/import/import-gmock.mk

SRC_CC = gmock-all.cc

vpath %.cc $(GMOCK_DIR)/src

INC_DIR += $(GMOCK_DIR)
INC_DIR += $(GMOCK_DIR)/include
INC_DIR += $(GMOCK_DIR)/include/internal

LIBS += libc libm stdcxx
SHARED_LIB = yes

CC_CXX_WARN_STRICT =
