import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

import StratifyLabs.UI 2.0

Item {
    id: settinsScreen
    signal wifiButtonPressed()
    signal updateButtonPressed()
    signal exitButtonPressed()

    SButton{
        id: exitButton
        style: "btn-secondary"
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
            style: "btn-outline-primary"
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("Настройки Wifi")
            onClicked: wifiButtonPressed()
        }

        SButton {
            id: updateButton
            style: "btn-outline-primary"
            Layout.alignment: Qt.AlignHCenter
            span: 10
            onClicked: updateButtonPressed()
            text: qsTr("Обновление ...")
        }
    }
}
