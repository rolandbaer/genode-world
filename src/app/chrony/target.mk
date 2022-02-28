TARGET = chronyd

CHRONY_DIR := $(call select_from_ports,chrony)/src/app/chronyd

LIBS += libc libm stdcxx posix nettle gnutls

SRC_CC  = array.c
SRC_CC += cmdparse.c
SRC_CC += conf.c
SRC_CC += local.c
SRC_CC += logging.c
SRC_CC += main.c
SRC_CC += memory.c
SRC_CC += reference.c
SRC_CC += regress.c
SRC_CC += rtc.c
SRC_CC += samplefilt.c
SRC_CC += sched.c
SRC_CC += socket.c
SRC_CC += sources.c
SRC_CC += sourcestats.c
SRC_CC += stubs.c
SRC_CC += smooth.c
SRC_CC += sys.c
SRC_CC += sys_null.c
SRC_CC += tempcomp.c
SRC_CC += util.c
SRC_CC += sys_generic.c
#SRC_CC += sys_linux.c
#SRC_CC += sys_timex.c
#SRC_CC += sys_netbsd.c
SRC_CC += sys_posix.c
SRC_CC += cmdmon.c
SRC_CC += manual.c
SRC_CC += pktlength.c
SRC_CC += privops.c
SRC_CC += ntp_auth.c
SRC_CC += ntp_core.c
SRC_CC += ntp_ext.c
SRC_CC += ntp_io.c
SRC_CC += ntp_sources.c
SRC_CC += addrfilt.c
SRC_CC += clientlog.c
SRC_CC += keys.c
SRC_CC += nameserv.c
#SRC_CC += refclock.c
#SRC_CC += refclock_phc.c
#SRC_CC += refclock_pps.c
#SRC_CC += refclock_shm.c
#SRC_CC += refclock_sock.c
SRC_CC += nameserv_async.c
SRC_CC += hwclock.c
#SRC_CC += ntp_io_linux.c
#SRC_CC += rtc_linux.c
SRC_CC += cmac_nettle.c
#SRC_CC += cmac_gnutls.c
SRC_CC += hash_nettle.c
SRC_CC += siv_nettle.c
#SRC_CC += siv_gnutls.c
SRC_CC += nts_ke_client.c
SRC_CC += nts_ke_server.c
SRC_CC += nts_ke_session.c
SRC_CC += nts_ntp_auth.c
SRC_CC += nts_ntp_client.c
SRC_CC += nts_ntp_server.c
SRC_CC += $(REP_DIR)/src/app/chrony/genode_stubs.c

INC_DIR += $(CHRONY_DIR)/include
INC_DIR += $(REP_DIR)/src/app/chrony

CC_OPT  += -DHAVE_CONFIG_H -DGENODE_BUILD

CC_WARN = -Wall -Wno-unused -Wno-maybe-uninitialized -Wno-format-truncation \
          -Wno-stringop-truncation -Wno-stringop-overflow

CC_CXX_WARN_STRICT =

vpath %.c      $(CHRONY_DIR)
