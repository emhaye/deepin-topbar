include(../interfaces/interfaces.pri)

QT       += core gui x11extras widgets dbus

TARGET = dde-topbar
TEMPLATE = app
CONFIG         += c++11 link_pkgconfig
DESTDIR         = $$_PRO_FILE_PWD_/../
PKGCONFIG += xcb-ewmh dtkwidget dtkbase dtkutil dframeworkdbus x11

HEADERS  += \
    mainframe.h \
    controller/pluginloader.h \
    controller/pluginscontroller.h \
    item/pluginsitem.h \
    controller/pluginsitemcontroller.h \
    mainpanel.h \
    frame.h \
    item/item.h \
    item/stretchitem.h \
    frameshadow.h \
    utils/itempopupwindow.h

SOURCES += \
    main.cpp\
    mainframe.cpp \
    controller/pluginloader.cpp \
    controller/pluginscontroller.cpp \
    item/pluginsitem.cpp \
    controller/pluginsitemcontroller.cpp \
    mainpanel.cpp \
    frame.cpp \
    item/item.cpp \
    item/stretchitem.cpp \
    frameshadow.cpp \
    utils/itempopupwindow.cpp

target.path = $${PREFIX}/bin/
INSTALL += target