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
#SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/gl/*.c))
#SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/*.c))
#SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/includes/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/x509/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/auth/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/ext/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/algoritms/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/extras/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/accelerated/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/accelerated/x86/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/unistring/*.c))
#SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/lib/nettle/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/extras/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/extras/includes/*.c))
# SRC_C += $(notdir $(wildcard $(GNUTLS_DIR)/src/gl/*.c))

SRC_C_LIB += lib/alert.c
SRC_C_LIB += lib/auth.c
SRC_C_LIB += lib/auto-verify.c
SRC_C_LIB += lib/buffers.c
SRC_C_LIB += lib/cipher.c
SRC_C_LIB += lib/cert-cred.c
SRC_C_LIB += lib/cert-cred-x509.c
SRC_C_LIB += lib/errors.c
SRC_C_LIB += lib/global.c
SRC_C_LIB += lib/gnutls_asn1_tab.c
SRC_C_LIB += lib/handshake.c
SRC_C_LIB += lib/mbuffers.c
SRC_C_LIB += lib/mem.c
SRC_C_LIB += lib/mpi.c
SRC_C_LIB += lib/pk.c
SRC_C_LIB += lib/prf.c
SRC_C_LIB += lib/priority.c
SRC_C_LIB += lib/privkey.c
SRC_C_LIB += lib/profiles.c
SRC_C_LIB += lib/record.c
SRC_C_LIB += lib/safe-memfuncs.c
SRC_C_LIB += lib/session.c
SRC_C_LIB += lib/state.c
SRC_C_LIB += lib/str-idna.c
SRC_C_LIB += lib/system.c

SRC_C_LIB_ALGORITHMS += lib/algorithms/mac.c
SRC_C_LIB_ALGORITHMS += lib/algorithms/ciphers.c
SRC_C_LIB_ALGORITHMS += lib/algorithms/protocols.c

SRC_C_LIB_EXT += lib/ext/alpn.c
SRC_C_LIB_EXT += lib/ext/server_name.c

SRC_C_LIB_INIH += lib/inih/ini.c

SRC_C_LIB_MINITASN1 += lib/minitasn1/decoding.c
SRC_C_LIB_MINITASN1 += lib/minitasn1/structure.c
SRC_C_LIB_MINITASN1 += lib/minitasn1/version.c

SRC_C_LIB_NETTLE += lib/nettle/init.c

SRC_C_LIB_SYSTEM += lib/system/sockets.c

SRC_C_LIB_X509 += lib/x509/pkcs12.c
SRC_C_LIB_X509 += lib/x509/pkcs12_bag.c
SRC_C_LIB_X509 += lib/x509/privkey.c
SRC_C_LIB_X509 += lib/x509/verify.c
SRC_C_LIB_X509 += lib/x509/verify-high.c
SRC_C_LIB_X509 += lib/x509/verify-high2.c
SRC_C_LIB_X509 += lib/x509/x509.c
SRC_C_LIB_X509 += lib/x509/x509_ext.c

SRC_C_GL_SYSTEM += gl/c-strcasecmp.c
SRC_C_GL_SYSTEM += gl/c-strncasecmp.c

SRC_C = $(SRC_C_LIB) $(SRC_C_LIB_ALGORITHMS) $(SRC_C_LIB_EXT) $(SRC_C_LIB_INIH) $(SRC_C_LIB_MINITASN1) $(SRC_C_LIB_SYSTEM) $(SRC_C_LIB_X509) $(SRC_C_GL_SYSTEM)

#vpath %.c $(GNUTLS_DIR)/lib
#vpath %.c $(GNUTLS_DIR)/lib/ext)

#vpath %.c $(GNUTLS_DIR)/lib/nettle)

vpath %.c $(GNUTLS_DIR)

#vpath %.c $(GNUTLS_DIR)/gl
#vpath %.c $(GNUTLS_DIR)/lib/includes)
# vpath lib/x509/%.c $(GNUTLS_DIR/lib/x509)
# vpath lib/auth/%.c $(GNUTLS_DIR/lib/auth)

# vpath lib/algoritms/%.c $(GNUTLS_DIR/lib/algoritms)
# vpath lib/extras/%.c $(GNUTLS_DIR/lib/extras)
# vpath lib/accelerated/%.c $(GNUTLS_DIR/lib/accelerated)
# vpath lib/accelerated/x86/%.c $(GNUTLS_DIR/lib/accelerated/x86)


#INC_DIR += $(GNUTLS_DIR)/gl
#INC_DIR += $(GNUTLS_DIR)/lib
#INC_DIR += $(GNUTLS_DIR)/lib/ext

INC_DIR += $(GNUTLS_DIR)/lib
#INC_DIR += $(GNUTLS_DIR)/lib/system
INC_DIR += $(GNUTLS_DIR)/gl
INC_DIR += $(GNUTLS_DIR)/lib/includes
INC_DIR += $(GNUTLS_DIR)/lib/minitasn1
INC_DIR += $(GNUTLS_DIR)/lib/unistring
INC_DIR += $(GNUTLS_DIR)/lib/x509
INC_DIR += $(REP_DIR)/src/lib/gnutls

# INC_DIR += \
#     $(GNUTLS_DIR) \
# 	$(REP_DIR)/src/lib/gnutls

CC_OPT = -DHAVE_CONFIG_H

LIBS += libc gmp nettle

SHARED_LIB = yes

$(info $$SRC_C is [${SRC_C}])
$(info $$SRC_O is [${SRC_O}])