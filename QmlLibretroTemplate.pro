TEMPLATE = app

QT += qml quick widgets multimedia

SOURCES += main.cpp \
    videoitem.cpp \
    core.cpp \
    audio.cpp \
    audiobuffer.cpp \
    phoenixglobals.cpp \
    libretrocontroller.cpp

RESOURCES += qml.qrc

LIBS += -lsamplerate

macx {
    INCLUDEPATH += /Library/Frameworks/SDL2.framework/Headers /usr/local/include
    QMAKE_CXXFLAGS += -F/Library/Frameworks
    QMAKE_LFLAGS += -F/Library/Frameworks -L/usr/local/lib
}

CONFIG += c++11

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    videoitem.h \
    core.h \
    libretro.h \
    audio.h \
    logging.h \
    audiobuffer.h \
    phoenixglobals.h \
    libretrocontroller.h
