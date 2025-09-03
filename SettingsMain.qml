import QtQuick 2.15

Item {
    signal returnButtonPressed()
    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "qrc:/SettingsList.qml"
    }
    Connections {
        target: mainLoader.item // Подключаемся к сигналам загруженного компонента

        function onWifiButtonPressed() {
            if(mainLoader.item instanceof SettingsList) { // Проверяем, что загружен именно Button
                mainLoader.source = "WiFiConnector.qml"
            }
        }
        // Если загружен TextItem
        function onUpdateButtonPressed() {
            if (mainLoader.item instanceof SettingsList) { // Проверяем, что загружен именно Text
                mainLoader.source = "updateWindow.qml"
            }
        }

        function onAboutButtonPressed() {
            if (mainLoader.item instanceof SettingsList) {
                mainLoader.source = "AboutScreen.qml"
            }
        }

        function onExitButtonPressed() {
            mainLoader.returnButtonPressed()
        }

        function onReturnButtonPressed() {
            if (mainLoader.item instanceof SettingsList)
                ;
            else
                mainLoader.source = "SettingsList.qml"
        }
    }

}
