import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root

    // Window size
    width: 640
    height: 480

    // Window basic setup
    title: qsTr("Image Viewer")
    visible: true

    // Container color init
    property color buttonContainerColor: "#333333"
    property color imageContainerColor: "#5A6263"

    // Container size init
    property real buttonContainerWidth: (root.width / 4)
    property real buttonContainerHeight: root.height

    property real imageContainerWidth: root.width - root.buttonContainerWidth
    property real imageContainerHeight: root.height

    // Container position init
    property real buttonContainerX: 0
    property real buttonContainerY: 0

    property real imageContainerX: root.buttonContainerWidth
    property real imageContainerY: 0

    // Button container
    Rectangle {
        id: buttonContainer

        // Button container position
        x: root.buttonContainerX
        y: root.buttonContainerY

        // Button container size
        width: root.buttonContainerWidth
        height: root.buttonContainerHeight

        // Button container color
        color: root.buttonContainerColor

        // Button column
        Column {
            id: buttonColumn

            // Button column position
            anchors.centerIn: buttonContainer

            // Button column element position
            spacing: 30

            // Button size init
            property real buttonWidth: buttonContainer.width - 30
            property real buttonHeight: 80

            // Buttons
            HoverButton {
                // Button size
                width: buttonColumn.buttonWidth
                height: buttonColumn.buttonHeight

                // Button text
                title.text: "Cat"

                // Button Signal Handler
                mouseArea.onPressed: image.source = "qrc:/images/images/cat.jpg"
            }

            HoverButton {
                // Button size
                width: buttonColumn.buttonWidth
                height: buttonColumn.buttonHeight

                // Button text
                title.text: "Fox"

                // Button Signal Handler
                mouseArea.onPressed: image.source = "qrc:/images/images/fox.jpg"
            }

            HoverButton {
                // Button size
                width: buttonColumn.buttonWidth
                height: buttonColumn.buttonHeight

                // Button text
                title.text: "Dog"

                // Button Signal Handler
                mouseArea.onPressed: image.source = "qrc:/images/images/dog.jpg"
            }
        }
    }

    // Image container
    Rectangle {
        id: imageContainer

        // Image container position
        x: root.imageContainerX
        y: root.imageContainerY

        // Image container size
        width: root.imageContainerWidth
        height: root.imageContainerHeight

        // Image container color
        color: root.imageContainerColor

        // Image
        Image {
            id: image

            // Image size
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            anchors.margins: 25

            // Image source
            source: "qrc:/images/images/logo.png"

        }
    }
}
