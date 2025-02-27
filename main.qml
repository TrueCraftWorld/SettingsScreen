import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Extras 1.4
import QtQuick.CuteKeyboard 1.0

ApplicationWindow {
    width: 1280
    height: 800
    visible: true
    color: "black"
    id: root
    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "qrc:/SettingsList.qml"
    }
    Connections {
        target: mainLoader.item // Подключаемся к сигналам загруженного компонента

        function onWifiButtonPressed() {
            console.log("qwerty")
            if(mainLoader.item instanceof SettingsList) { // Проверяем, что загружен именно Button
                console.log("qwerty2")
                mainLoader.source = "WiFiConnector.qml"
            }
        }
        // Если загружен TextItem
        function onUpdateButtonPressed() {
            if(mainLoader.item instanceof SettingsList) { // Проверяем, что загружен именно Text
                mainLoader.source = "updateWindow.qml"
            }
        }

        function onExitButtonPressed(){
            Qt.quit()
        }

        function onReturnButtonPressed() {
            mainLoader.source = "SettingsList.qml"
        }
    }

    InputPanel {
        id: inputPanel

        z: 99
        y: root.height
        availableLanguageLayouts: ["Ru","En"]
        anchors.left: parent.left
        anchors.right: parent.right

        states: State {
            name: "visible"
            when: Qt.inputMethod.visible
            PropertyChanges {
                target: inputPanel
                y: root.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 150
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
