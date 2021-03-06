include(../HmiRunTime.pri)

TARGET = AppLauncher
TEMPLATE = app
DESTDIR = $$clean_path($$IDE_APP_PATH)

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

LIB_SUFFIX=""
CONFIG(debug, debug|release) { #debug
    win32 {
        LIB_SUFFIX=d
    }
}

LIBRARY_SRC_PATH = $$clean_path($$IDE_APP_PATH/../HmiFuncDesigner)
LINK_LIBRARY_PATH = $$clean_path($$IDE_APP_PATH/../lib)
#message("LIBRARY_SRC_PATH: "$$LIBRARY_SRC_PATH)
#message("LINK_LIBRARY_PATH: "$$LINK_LIBRARY_PATH)

INCLUDEPATH += $$LIBRARY_SRC_PATH/libs/Utils
LIBS += -L$$LINK_LIBRARY_PATH -lUtils$${LIB_SUFFIX}

SOURCES += \
        applauncher.cpp \
        main.cpp

HEADERS += \
        applauncher.h

FORMS +=

DISTFILES += \
    applauncher.ini


