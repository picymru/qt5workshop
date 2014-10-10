// char.qml - This component will get created dynamically by our application
// when the user presses a key

import QtQuick 2.0

Text {
    id: textChar

    // We use X as placeholder text, this will be replaced by our code
    text: "X"
    smooth: true

    font.family: "Calibri"
    font.bold: true

    // Randomise the size of the font (36pt to 132pt)
    font.pointSize: 36

    // Pick a random colour from 16.7 million possibilities, 255 is the alpha
    // transparency, this is fixed at 255 so our text appears opaque
    color: "blue"

    // Position the text at a random location on screen minus 40 pixels
    x: Math.floor( parent.width * Math.random() ) - 40
    y: Math.floor( parent.height * Math.random() ) - 40

    // Fade text out over 5 seconds
    NumberAnimation on opacity {
        to: 0
        duration: 5000

        onRunningChanged: {
            // When the animation completes, destroy the object, if we don't
            // clean up after ourselves then our application will slow down
            // over time
            if (!running)
            {
                textChar.destroy();
            }
        }
    }
}
