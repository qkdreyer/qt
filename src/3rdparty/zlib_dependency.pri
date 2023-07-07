# zlib dependency satisfied by bundled 3rd party zlib or system zlib
contains(QT_CONFIG, system-zlib) {
    symbian:                 LIBS_PRIVATE += -llibz
    else:if(unix|win32-g++*):LIBS_PRIVATE += -lz
    else:if(win32-*):        LIBS_PRIVATE += -lzlib
    else:                    LIBS += zdll.lib
} else {
    INCLUDEPATH +=  $$PWD/zlib
}
