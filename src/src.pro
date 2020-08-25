######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

QT += dtkgui dtkwidget
TEMPLATE = app
TARGET = deepin-screen-recorder
INCLUDEPATH += .

CONFIG += link_pkgconfig
CONFIG += c++11
PKGCONFIG += xcb xcb-util dframeworkdbus
RESOURCES = ../deepin-screen-recorder.qrc \
    widgets/resources.qrc \
    icons/icons.qrc

# Input
HEADERS += main_window.h record_process.h settings.h utils.h record_button.h record_option_panel.h countdown_tooltip.h constant.h event_monitor.h button_feedback.h process_tree.h \
    camera_process.h \
    show_buttons.h \
    keydefine.h   \
    utils/audioutils.h \
    voice_record_process.h \
    menucontroller/menucontroller.h \
    utils/screenutils.h \
    utils/baseutils.h \
    utils/configsettings.h \
    utils/shortcut.h \
    utils/tempfile.h \
    utils/calculaterect.h \
    utils/saveutils.h \
    utils/shapesutils.h \
    widgets/savetips.h \
    widgets/fontsizewidget.h \
    widgets/colorbutton.h \
    widgets/zoomIndicator.h \
    widgets/majtoolbar.h \
    widgets/textedit.h \
    widgets/bigcolorbutton.h \
    widgets/toptips.h \
    widgets/toolbar.h \
    widgets/savebutton.h \
    widgets/textbutton.h \
    widgets/shapeswidget.h \
    widgets/toolbutton.h \
    widgets/subtoolbar.h \
    widgets/maintoolwidget.h \
    widgets/subtoolwidget.h \
    widgets/keybuttonwidget.h \
    widgets/sidebar.h \
    widgets/shottoolwidget.h \
    widgets/colortoolwidget.h \
    dbusinterface/dbuszone.h \
    dbusinterface/dbuscontrolcenter.h \
    dbusinterface/dbusnotify.h \
    dbusinterface/dbussoundeffect.h \
    dbusservice/dbusscreenshotservice.h \
    dbusservice/dbusscreenshot.h \
    widgets/camerawidget.h \
    utils/dbusutils.h \
    screenshot.h \
    utils/voicevolumewatcher.h \
    utils/camerawatcher.h \
    widgets/tooltips.h \
    widgets/filter.h \
    utils/desktopinfo.h \
    utils/screengrabber.h \
    dbusinterface/drawinterface.h \
    screen_shot_event.h
SOURCES += main.cpp main_window.cpp record_process.cpp settings.cpp utils.cpp record_button.cpp record_option_panel.cpp countdown_tooltip.cpp constant.cpp event_monitor.cpp button_feedback.cpp process_tree.cpp \
    camera_process.cpp \
    show_buttons.cpp  \
    utils/audioutils.cpp \
    voice_record_process.cpp \
    menucontroller/menucontroller.cpp \
    utils/shapesutils.cpp \
    utils/tempfile.cpp \
    utils/calculaterect.cpp \
    utils/shortcut.cpp \
    utils/configsettings.cpp \
    utils/screenutils.cpp \
    utils/baseutils.cpp \
    widgets/savebutton.cpp \
    widgets/toptips.cpp \
    widgets/shapeswidget.cpp \
    widgets/textbutton.cpp \
    widgets/colorbutton.cpp \
    widgets/fontsizewidget.cpp \
    widgets/textedit.cpp \
    widgets/bigcolorbutton.cpp \
    widgets/zoomIndicator.cpp \
    widgets/majtoolbar.cpp \
    widgets/subtoolbar.cpp \
    widgets/savetips.cpp \
    widgets/toolbar.cpp \
    widgets/maintoolwidget.cpp \
    widgets/subtoolwidget.cpp \
    widgets/keybuttonwidget.cpp \
    widgets/sidebar.cpp \
    widgets/shottoolwidget.cpp \
    widgets/colortoolwidget.cpp \
    dbusinterface/dbusnotify.cpp \
    dbusinterface/dbuszone.cpp \
    dbusinterface/dbuscontrolcenter.cpp \
    dbusinterface/dbussoundeffect.cpp \
    dbusservice/dbusscreenshotservice.cpp \
    dbusservice/dbusscreenshot.cpp \
    widgets/camerawidget.cpp \
    utils/dbusutils.cpp \
    screenshot.cpp \
    utils/voicevolumewatcher.cpp \
    utils/camerawatcher.cpp \
    widgets/tooltips.cpp \
    widgets/filter.cpp \
    utils/desktopinfo.cpp \
    utils/screengrabber.cpp \
    dbusinterface/drawinterface.cpp \
    screen_shot_event.cpp

QT += core
QT += widgets
QT += gui
QT += network
QT += x11extras
QT += dbus
QT += multimedia
QT += multimediawidgets
LIBS += -lX11 -lXext -lXtst -lXfixes -lXcursor
LIBS += -L"libprocps" -lprocps

QMAKE_CXXFLAGS += -g
QMAKE_CXXFLAGS += -Wno-error=deprecated-declarations -Wno-deprecated-declarations

isEmpty(PREFIX){
    PREFIX = /usr
}

isEmpty(BINDIR):BINDIR=/usr/bin
isEmpty(ICONDIR):ICONDIR=/usr/share/icons/hicolor/scalable/apps
isEmpty(APPDIR):APPDIR=/usr/share/applications
isEmpty(DSRDIR):DSRDIR=/usr/share/deepin-screen-recorder
isEmpty(DOCDIR):DOCDIR=/usr/share/dman/deepin-screen-recorder
isEmpty(ETCDIR):ETCDIR=/etc

target.path = $$INSTROOT$$BINDIR
icon.path = $$INSTROOT$$ICONDIR
desktop.path = $$INSTROOT$$APPDIR
translations.path = $$INSTROOT$$DSRDIR/translations
manual.path = $$INSTROOT$$DOCDIR
shotShell.path = $$INSTROOT$$BINDIR
modprobe.path = $$ETCDIR/modprobe.d
modload.path = $$ETCDIR/modules-load.d

#icon.files = image/deepin-screen-recorder.svg deepin-screenshot.svg
#desktop.files = deepin-screen-recorder.desktop deepin-screenshot.desktop
icon.files = ../image/deepin-screen-recorder.svg
desktop.files = ../deepin-screen-recorder.desktop
manual.files = ../manual/*
shotShell.files = ../deepin-screenshot
modprobe.files = modinfo/modprobe.d/deepin-screen-recorder.conf
modload.files = modinfo/modulesload.d/deepin-screen-recorder.conf

dbus_service.files = $$PWD/../com.deepin.ScreenRecorder.service $$PWD/../com.deepin.Screenshot.service
dbus_service.path = $$PREFIX/share/dbus-1/services

#INSTALLS += target icon desktop manual dbus_service shotShell
INSTALLS += target icon desktop manual dbus_service modload modprobe

isEmpty(TRANSLATIONS) {
     include(translations.pri)
}

TRANSLATIONS_COMPILED = $$TRANSLATIONS
TRANSLATIONS_COMPILED ~= s/\.ts/.qm/g

translations.files = $$TRANSLATIONS_COMPILED
INSTALLS += translations
CONFIG *= update_translations release_translations

CONFIG(update_translations) {
    isEmpty(lupdate):lupdate=lupdate
    system($$lupdate -no-obsolete -locations none $$_PRO_FILE_)
}
CONFIG(release_translations) {
    isEmpty(lrelease):lrelease=lrelease
    system($$lrelease $$_PRO_FILE_)
}

DSR_LANG_PATH += $$DSRDIR/translations
DEFINES += "DSR_LANG_PATH=\\\"$$DSR_LANG_PATH\\\""

DISTFILES += \
    ../image/newUI/focus/close-focus.svg
