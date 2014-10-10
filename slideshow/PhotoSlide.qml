// PhotoSlide.qml

// Displays an image and caption

import QtQuick 2.0

Item {
    // These properties are what we configured from outside the component
    property string photo: ""
    property string description: ""

    id: photoSlide

    width: parent.width
    height: parent.height

    // Start off as not visible at load time
    visible: false

    // Define a signal for when the slide animation completes
    signal slideFinished( )

    // Create an image using the supplied filename
    Image {
        id: photoImage
        source: photo
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        opacity: 1
    }

    // Create a text element using the supplied caption
    Text {
        id: photoDesc
        text: description
        font.pointSize: 24
        color: "white"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 8
        anchors.bottomMargin: 8
    }

    // This is our main animation sequence, don't delete this b
    SequentialAnimation {
        /* DON'T CHANGE THESE 3 LINES */
        id: animation
        running: false
        onStopped: photoSlide.slideFinished()

        /* CHANGE ANYTHING BETWEEN HERE... */

        // Wait 5 seconds
        PauseAnimation { duration: 5000 }

        /* ...AND HERE */

        // Make the photo slide invisible again, you can change this if you think you need to
        PropertyAction { target: photoSlide; property: "visible"; value: false }
    }

    function go() {
        visible = true;
        animation.running = true;
    }
}
