TEMPLATE   = app
TARGET     = qt_avplay
QT         = core gui-private widgets xml
CONFIG    += c++2a
HEADERS    = avplay_slave.h \
             control_bar.h \
             main_window.h
SOURCES    = control_bar.cpp \
             main.cpp \
             main_window.cpp
RESOURCES  = style.qrc
