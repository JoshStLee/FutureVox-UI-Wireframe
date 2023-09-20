import QtQuick 2.15
import QtQuick.Controls 2.15
import Futurevox

Rectangle {
    color: "#008800"

    id: toggleToolbar
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    implicitWidth: 40
    Column {
        id: column
        width: 50
        height: 50
        spacing: 10

        Image {
            width: 40
            height: 40
            source: "images/tune11.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
