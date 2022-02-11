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
SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/gl/*.c))
SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/includes/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/x509/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/auth/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/ext/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/algoritms/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/extras/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/accelerated/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/accelerated/x86/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/unistring/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/nettle/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/extras/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/extras/includes/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/src/gl/*.c))

vpath %.c $(GNUTLS_DIR)/gl
vpath %.c $(GNUTLS_DIR)/lib
# vpath lib/includes/%.c $(GNUTLS_DIR/lib/includes)
# vpath lib/x509/%.c $(GNUTLS_DIR/lib/x509)
# vpath lib/auth/%.c $(GNUTLS_DIR/lib/auth)
# vpath lib/ext/%.c $(GNUTLS_DIR/lib/ext)
# vpath lib/algoritms/%.c $(GNUTLS_DIR/lib/algoritms)
# vpath lib/extras/%.c $(GNUTLS_DIR/lib/extras)
# vpath lib/accelerated/%.c $(GNUTLS_DIR/lib/accelerated)
# vpath lib/accelerated/x86/%.c $(GNUTLS_DIR/lib/accelerated/x86)

INC_DIR += $(GNUTLS_DIR)/gl
INC_DIR += $(GNUTLS_DIR)/lib

INC_DIR += $(GNUTLS_DIR)/lib/includes
INC_DIR += $(GNUTLS_DIR)/lib/minitasn1
INC_DIR += $(REP_DIR)/src/lib/gnutls

# INC_DIR += \
#     $(GNUTLS_DIR) \
# 	$(REP_DIR)/src/lib/gnutls

CC_OPT = -DHAVE_CONFIG_H

LIBS += libc gmp nettle

SHARED_LIB = yes

$(info $$SRC_C is [${SRC_C}])
$(info $$SRC_O is [${SRC_O}])