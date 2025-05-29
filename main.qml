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

    SettingsMain {
        anchors.fill: parent
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
