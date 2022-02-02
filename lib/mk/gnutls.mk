GNUTLS_DIR := $(call select_from_ports,gnutls)/src/lib/gnutls

# SRC_C  = aes-decrypt-internal.c
# SRC_C += aes-decrypt.c

# SRC_ASM  = salsa20-2core.asm
# SRC_ASM += gcm-hash8.asm

# SRC_O += $(SRC_ASM:.asm=.o)

# %.o: %.asm
# 	$(MSG_ASSEM)$@ 
# 	cd $(GNUTLS_DIR); /usr/bin/m4 $(GNUTLS_DIR)/m4-utils.m4 $(GNUTLS_DIR)/asm.m4 $(REP_DIR)/src/lib/gnutls/config.m4 $(REP_DIR)/src/lib/gnutls/machine.m4 $< >$(GNUTLS_DIR)/x86_64/$*.s
# 	$(CC) -c $(GNUTLS_DIR)/x86_64/$*.s
SRC_C = $(notdir $(wildcard $(GNUTLS_DIR)/*.c))

vpath %.c $(GNUTLS_DIR)

INC_DIR += $(GNUTLS_DIR)

# vpath %.c $(GNUTLS_DIR)
# vpath %.asm $(GNUTLS_DIR)/x86_64

# INC_DIR += \
#     $(GNUTLS_DIR) \
# 	$(REP_DIR)/src/lib/gnutls

CC_OPT = -DHAVE_CONFIG_H

LIBS += libc gmp nettle

SHARED_LIB = yes
