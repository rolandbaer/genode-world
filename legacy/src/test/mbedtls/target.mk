TARGET = test-mbedtls
LIBS   = mbedtls posix libc

MBEDTLS := $(call select_from_ports,mbedtls)/src/lib/mbedtls

INC_DIR = $(MBEDTLS)/tests/include $(MBEDTLS)/library

SRC_C = ssl_client1.c certs.c

vpath certs.c $(MBEDTLS)/tests/src

