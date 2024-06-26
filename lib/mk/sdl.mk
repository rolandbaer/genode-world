SDL_PORT_DIR := $(call select_from_ports,sdl)
SDL_DIR      := $(SDL_PORT_DIR)/src/lib/sdl

# build shared object
SHARED_LIB = yes

# use default warning level for 3rd-party code
CC_WARN =

INC_DIR += $(SDL_PORT_DIR)/include
INC_DIR += $(SDL_PORT_DIR)/include/SDL

#
# In case we use the depot add the location
# to the global include path.
#
ifeq ($(CONTRIB),)
REP_INC_DIR += include/SDL
endif

# backends
SRC_CC   = video/SDL_genode_fb_video.cc \
           video/SDL_genode_fb_events.cc \
           loadso/SDL_loadso.cc

INC_DIR += $(REP_DIR)/include/SDL \
           $(REP_DIR)/src/lib/sdl \
           $(REP_DIR)/src/lib/sdl/thread \
           $(REP_DIR)/src/lib/sdl/video

# main files
SRC_C    = SDL.c \
           SDL_error.c \
           SDL_fatal.c

INC_DIR  += $(REP_DIR)/src/lib/sdl

# stdlib files
SRC_C   += stdlib/SDL_getenv.c \
           stdlib/SDL_string.h

# thread subsystem
SRC_C   += thread/SDL_thread.c \
           thread/pthread/SDL_systhread.c \
           thread/generic/SDL_syscond.c \
           thread/generic/SDL_sysmutex.c \
           thread/pthread/SDL_syssem.c
INC_DIR += $(SDL_DIR)/src/thread

# cpuinfo subsystem
SRC_C   += cpuinfo/SDL_cpuinfo.c

# timer subsystem
SRC_C   += timer/SDL_timer.c \
           timer/unix/SDL_systimer.c
INC_DIR += $(SDL_DIR)/src/timer

# video subsystem
SRC_C += $(addprefix video/,$(notdir $(wildcard $(SDL_DIR)/src/video/*.c)))
INC_DIR += $(SDL_DIR)/src/video

# event subsystem
SRC_C += $(addprefix events/,$(notdir $(wildcard $(SDL_DIR)/src/events/*.c)))
INC_DIR += $(SDL_DIR)/src/events

# audio subsystem
SRC_C += $(addprefix audio/,$(notdir $(wildcard $(SDL_DIR)/src/audio/*.c))) \
         audio/dma/SDL_dmaaudio.c \
         audio/dsp/SDL_dspaudio.c
INC_DIR += $(SDL_DIR)/src/audio \
           $(SDL_DIR)/src/audio/dma \
           $(SDL_DIR)/src/audio/dsp

# file I/O subsystem
SRC_C   += file/SDL_rwops.c

# joystick subsystem
SRC_C   += joystick/SDL_joystick.c \
           joystick/dummy/SDL_sysjoystick.c
INC_DIR += $(SDL_DIR)/src/joystick

# cdrom subsystem
SRC_C   += cdrom/SDL_cdrom.c \
           cdrom/dummy/SDL_syscdrom.c
INC_DIR += $(SDL_DIR)/src/cdrom

SRC_CC  += sdl_main.cc

# we need libc
LIBS = libc mesa_api

# backend path
vpath % $(REP_DIR)/src/lib/sdl

vpath % $(SDL_DIR)/src

CC_CXX_WARN_STRICT =

$(INSTALL_DIR)/sdl.lib.so: $(INSTALL_DIR)/SDL.lib.so

$(INSTALL_DIR)/SDL.lib.so:
	$(VERBOSE)ln -sf sdl.lib.so $@

# capture dependency from mesa port ('call select_from_ports,mesa')
include $(call select_from_repositories,lib/import/import-mesa_api.mk)
