import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

import StratifyLabs.UI 2.0

Item {
    id: settinsScreen
    signal wifiButtonPressed()
    signal updateButtonPressed()
    signal exitButtonPressed()
    signal aboutButtonPressed()
    Rectangle {
        id: background
        anchors.fill: parent
        color: "darkslategray"
    }

    SButton{
        id: exitButton
        style: "btn-secondary lg"
        text: qsTr("Выход")
        onClicked: settinsScreen.exitButtonPressed()
        anchors {
            left:parent.left
            bottom: parent.bottom
            margins: 15
        }
    }

    SRow {
        id: buttonColumn
        height: parent.height - 55
        anchors{
            right: parent.right
            left:parent.left
            bottom: parent.bottom
        }

        SButton {
            id: wifiButton
            span: 10
            style: "btn-outline-primary lg"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            text: qsTr("Настройки WiFi")
            onClicked: wifiButtonPressed()
        }

        SButton {
            id: updateButton
            style: "btn-outline-primary lg"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            span: 10
            onClicked: updateButtonPressed()
            text: qsTr("Обновление ...")
        }
        SButton {
            id: aboutButton
            style: "btn-outline-primary lg"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            span: 10
            onClicked: aboutButtonPressed()
            text: qsTr("О программе")
        }
    }
}
