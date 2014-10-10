/* Slideshow
 * A simple slideshow, that's easy to customise.
 */

import QtQuick 2.0
import QtQuick.Window 2.0

// This rectangle will be our application view
Rectangle {
    id: slideshowWindow

    // Make it the width and height of the screen (you have to import
    // QtQuick.Window to use Screen
    width: Screen.width
    height: Screen.height

    color: "black"

    property int photoIndex: 0

    focus: true

    // Whenever a key is pressed run this JavaScript in our imported code
    //Keys.onPressed: TM.generateTextObject(event.key)

    // Make the escape key quit the program
    Keys.onEscapePressed: Qt.quit();

    // This is a model of our input data, we will use this to generate
    // the slideshow
    ListModel {
        id: photoList

        // Each element has two components, the filename of the image and a
        // caption to display with the photo
        ListElement {
            filename: "512662079_8e595a8491_o.jpg"
            caption: "landscape by Vincenzo Visciano"
            url: "https://www.flickr.com/photos/liberodicrederci/512662079/in/photolist-Miwzn-buLfnF-7VwPQB-7kLQNR-4y1E1F-ojkRYX-oba3B9-mpijQg-NW35r-5GZj1q-oSm9nY-bUu18H-acoPwx-7E9LDe-47CgB6-gUxM24-ajcNYF-aPceC-6u9tH8-99skc-2ZpCgq-e9Yj3U-7vQX5R-g5hYkz-eynAbC-8Y7eXi-bF8Sui-bDrq8C-a8iNbK-4zyCMa-aj9Je4-oVbgi3-ajd9Qi-dyDKY5-esZ8Nu-3UcnP5-g6smxC-bgVpEk-nNbXBH-4nsSVu-4X51Qy-fxPZyf-918nhX-a78B1k-dJsph8-7z8gNZ-a1dKvB-cNo4cs-7UndrU-9MXAa7"
        }

        ListElement {
            filename: "11621620466_a9d330cb1f_k.jpg"
            caption: "Winter landscape by Alberto"
            url: "https://www.flickr.com/photos/albertodasiena/11621620466/in/photolist-4X51Qy-fxPZyf-918nhX-a78B1k-dJsph8-7z8gNZ-a1dKvB-cNo4cs-7UndrU-9MXAa7-4fs4BB-oGfnac-bEDjDP-dWDpRY-ahXHgB-nZ3ZJR-7VK4wa-heJTDB-rBxxd-56KVn5-f1bGxE-74TzoZ-eAmBTy-8w7rBP-cMSsUJ-rGvrS-81ZXjz-bMpSUZ-f4GzvH-nAG2Tn-6bQAka-fB1SmQ-4zyCNX-iGXQSE-hF1D6p-4B1pTW-inQUXF-qAezJ-9TDaEk-dCcvkH-nKhjEM-eUxDJj-hna7BZ-ckEt8w-iNUcvo-7DK8Dv-8jjXFq-cNK3q1-6yUfDS-2nfr9Z"
        }

        ListElement {
            filename: "14895311481_a150f63cfd_o.jpg"
            caption: "Belgian Landscape by Andrea Minoia"
            url: "https://www.flickr.com/photos/andrea_minoia/14895311481/in/photolist-4X51Qy-fxPZyf-918nhX-a78B1k-dJsph8-7z8gNZ-a1dKvB-cNo4cs-7UndrU-9MXAa7-4fs4BB-oGfnac-bEDjDP-dWDpRY-ahXHgB-nZ3ZJR-7VK4wa-heJTDB-rBxxd-56KVn5-f1bGxE-74TzoZ-eAmBTy-8w7rBP-cMSsUJ-rGvrS-81ZXjz-bMpSUZ-f4GzvH-nAG2Tn-6bQAka-fB1SmQ-4zyCNX-iGXQSE-hF1D6p-4B1pTW-inQUXF-qAezJ-9TDaEk-dCcvkH-nKhjEM-eUxDJj-hna7BZ-ckEt8w-iNUcvo-7DK8Dv-8jjXFq-cNK3q1-6yUfDS-2nfr9Z"
        }

        ListElement {
            filename: "14895311481_a150f63cfd_o.jpg"
            caption: "Belgian Landscape by Andrea Minoia"
            url: "https://www.flickr.com/photos/andrea_minoia/14895311481/in/photolist-4X51Qy-fxPZyf-918nhX-a78B1k-dJsph8-7z8gNZ-a1dKvB-cNo4cs-7UndrU-9MXAa7-4fs4BB-oGfnac-bEDjDP-dWDpRY-ahXHgB-nZ3ZJR-7VK4wa-heJTDB-rBxxd-56KVn5-f1bGxE-74TzoZ-eAmBTy-8w7rBP-cMSsUJ-rGvrS-81ZXjz-bMpSUZ-f4GzvH-nAG2Tn-6bQAka-fB1SmQ-4zyCNX-iGXQSE-hF1D6p-4B1pTW-inQUXF-qAezJ-9TDaEk-dCcvkH-nKhjEM-eUxDJj-hna7BZ-ckEt8w-iNUcvo-7DK8Dv-8jjXFq-cNK3q1-6yUfDS-2nfr9Z"
        }

        ListElement {
            filename: "9495855754_0614270ac2_h.jpg"
            caption: "Colombian Landscape by Pedro Szekely"
            url: "https://www.flickr.com/photos/andrea_minoia/14895311481/in/photolist-4X51Qy-fxPZyf-918nhX-a78B1k-dJsph8-7z8gNZ-a1dKvB-cNo4cs-7UndrU-9MXAa7-4fs4BB-oGfnac-bEDjDP-dWDpRY-ahXHgB-nZ3ZJR-7VK4wa-heJTDB-rBxxd-56KVn5-f1bGxE-74TzoZ-eAmBTy-8w7rBP-cMSsUJ-rGvrS-81ZXjz-bMpSUZ-f4GzvH-nAG2Tn-6bQAka-fB1SmQ-4zyCNX-iGXQSE-hF1D6p-4B1pTW-inQUXF-qAezJ-9TDaEk-dCcvkH-nKhjEM-eUxDJj-hna7BZ-ckEt8w-iNUcvo-7DK8Dv-8jjXFq-cNK3q1-6yUfDS-2nfr9Z"
        }

    }

    Repeater {
        id: photoSlides
        model: photoList

        PhotoSlide {
            // Use the data from the list model as inputs to the photo slide
            photo: "images/" + filename
            description: caption

            // When the photo animation is complete move on to the next one
            onSlideFinished: {
                // Move to next image
                slideshowWindow.photoIndex++;

                // If that was the last image, go back to the beginning
                if (slideshowWindow.photoIndex === photoSlides.count) {
                    slideshowWindow.photoIndex = 0;
                }

                // Start animating the next image
                photoSlides.itemAt(slideshowWindow.photoIndex).go();
            }
        }
    }

    // When the application launches, start animating the first item
    Component.onCompleted: {
            photoSlides.itemAt(0).go();
    }
}
