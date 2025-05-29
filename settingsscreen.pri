include(wifimodule/wifichooser.pri)
include(updatemodule/updateclient.pri)

QT += quick
CONFIG += c++17 link_pkgconfig disable-desktop



RESOURCES += $$PWD/settingsscreen.qrc


DISTFILES += \
    $$PWD/AboutScreen.qml \
    $$PWD/SettingsList.qml \
    $$PWD/SettingsMain.qml
