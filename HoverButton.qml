import QtQuick 2.15

Item {
    id: root

    // Default button color init
    property color backgroundColor: "#4A90E2"
    property color hoverBackgroundColor: "#357ABD"
    property color pressBackgroundColor: "#2C5E9E"

    property color textColor: "#FFFFFF"
    property color hoverTextColor: "#FFFFFF"
    property color pressTextColor: "#FFFFFF"

    // Alias access
    property alias title: buttonText
    property alias mouseArea: buttonMouseArea

    // Button
    Rectangle {
        id: button

        // Button size
        width: root.width
        height: root.height

        // Button color
        color: root.backgroundColor

        // Button setup
        clip: true

        // Button text
        Text {
            id: buttonText

            // Button text position
            anchors.centerIn: parent

            // Button text
            text: qsTr("")
            font.pointSize: 18

            // Button text color
            color: root.textColor

            // Button text setup
            font.bold: true
        }

        // Button mouse interaction area
        MouseArea {
            id: buttonMouseArea

            // Mouse area position
            anchors.fill: parent

            // Mouse area setup
            hoverEnabled: true

            // Signal handlers
            onEntered: {
                button.color = root.hoverBackgroundColor
                buttonText.color = root.hoverTextColor
            }

            onExited: {
                button.color = root.backgroundColor
                buttonText.color = root.textColor
            }

            onPressed: {
                button.color = root.pressBackgroundColor
                buttonText.color = root.pressTextColor
            }

            onReleased: {
                button.color = root.hoverBackgroundColor
                buttonText.color = root.hoverTextColor
            }

        }
    }
}
