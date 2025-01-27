
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Extras 1.4
import QtQuick.CuteKeyboard 1.0

ApplicationWindow {
    width: 1280
    height: 800
    visible: true
    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "qrc:/SettingsList.qml"
        // sourceComponent: SettingsList

    }
    Connections {
        target: mainLoader.item // Подключаемся к сигналам загруженного компонента
        function onWifiButtonPressed() {
            if(loader.item instanceof SettingsList) { // Проверяем, что загружен именно Button
            }
        }
        // Если загружен TextItem
        function onUpdateButtonPressed() {
            if(loader.item instanceof SettingsList) { // Проверяем, что загружен именно Text
            }
        }

        function onExitButtonPressed() {
            if(loader.item instanceof SettingsList) { // Проверяем, что загружен именно Text
            }
        }

        // function onReturnButtonPressed() {
        //     if(!loader.item instanceof SettingsList) { // Проверяем, что загружен именно Text
        //         mainLoader.sourceComponent = SettingsList
        //     }
        // }
    }
}
