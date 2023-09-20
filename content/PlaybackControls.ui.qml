import QtQuick 6.5
import QtQuick.Controls 6.5
import Futurevox
import QtQuick.Layouts

Rectangle {
    id: playbackControls
    color: "#868686"

    Row {
        id: row
        width: 50
        height: 50
        x: row.width / 5
        y: row.height / 5
        spacing: 10
        Image {
            width: 40
            height: 40
            source: "images/cursor11.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            width: 40
            height: 40
            source: "images/pencil11.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            width: 40
            height: 40
            source: "images/scissors11.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            width: 40
            height: 40
            source: "images/erase11.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
