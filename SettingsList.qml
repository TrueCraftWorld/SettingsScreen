import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    id: settinsScreen
    signal wifiButtonPressed()
    signal updateButtonPressed()
    signal exitButtonPressed()

    ServiceButton {
        id: exitButton
        text: qsTr("Выход")
        anchors {
            left:parent.left
            top: parent.top
            margins: 10
        }
        onTapped: settinsScreen.exitButtonPressed()
    }


    ColumnLayout {
        id: buttonColumn
        spacing: 5
        height: parent.height - 55
        anchors{
            right: parent.right
            left:parent.left
            bottom: parent.bottom
        }

        Rectangle {
            id: wifiButton
            Layout.alignment: Qt.AlignCenter
            radius: 8
            width: 500
            height: 60
            color: "darkslategray"
            Text {
                anchors.fill: parent
                id: wifiText
                color: "white"
                text: qsTr("Настройки Wifi")
            }
            MouseArea {
                anchors.fill: parent
                onClicked: wifiButtonPressed()
            }
        }

        Rectangle {
            id: updateButton
            Layout.alignment: Qt.AlignCenter
            radius: 8
            width: 500
            height: 60
            color: "darkslategray"
            Text {
                anchors.fill: parent
                id: updateButtonText
                color: "white"
                text: qsTr("Обновление ...")
            }
            MouseArea {
                anchors.fill: parent
                onClicked: updateButtonPressed()
            }
        }
    }

}
