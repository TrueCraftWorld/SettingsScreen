import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    id: settinsScreen
    signal wifiButtonPressed()
    signal updateButtonPressed()
    signal exitButtonPressed()
    Rectangle {
        id: exitButton
        anchors {
            left:parent.left
            top: parent.top
        }
        MouseArea {
            anchors.fill: parent
            onClicked: exitButtonPressed()
        }
        width: 55
        height: 55
        color: "darkblue"
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
        // topMargin: 25
        // bottomMargin: 25

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
                text: qsTr("Обновление ...")
            }
            MouseArea {
                anchors.fill: parent
                onClicked: updateButtonPressed()
            }
        }
    }

}
