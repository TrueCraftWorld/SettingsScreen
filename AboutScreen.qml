import QtQuick 2.15
import StratifyLabs.UI 2.0

Item {
    id: aboutScreen
    signal returnButtonPressed()

    property string versionString: ""

    Rectangle {
        id: background
        anchors.fill: parent
        color: "darkslategray"
    }
    SLabel {
        id: aboutLabel
        width: background.width
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }
        style: "label-primary lg";
        text: qsTr("О программе");
    }

    SColumn {
        width: background.width - 100
        anchors {
            top: aboutLabel.bottom
            topMargin: 25
            leftMargin: 50
            rightMargin: 50
            bottomMargin: 50
            horizontalCenter: background.horizontalCenter
        }

        SPanel {
            style: "panel-primary";
            heading: qsTr("О Qt");
            SText {
                text: qsTr("Версия Qt 5.15.8");
            }
        }

        SPanel {
            style: "panel-primary";
            heading: qsTr("Использованные библиотеки");
            SColumn {
                SText {
                    style: "left";
                    text: "Stratify QML 2";
                }
                SText {
                    style: "left";
                    text: "PullToRefreshHandler";
                }
            }
        }

        SPanel {
            style: "panel-primary";
            heading: qsTr("Версия приложения");
            SText {
                text: "versionStringAnother";
            }
        }
    }

    SButton {
        id: returnButton
        style: "btn-secondary"
        text: qsTr("Назад")
        anchors {
            left:parent.left
            bottom: parent.bottom
            margins: 10
        }
        onClicked: aboutScreen.returnButtonPressed()
    }
}
