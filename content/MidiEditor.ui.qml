import QtQuick.Layouts
import QtQuick 2.15
import QtQuick.Controls 2.15
import Futurevox

Pane {
    id: mainPane
    ToggleToolbar {
        id: editorToggles
    }

    ScrollView {
        id: editorView
        anchors.left: editorToggles.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: editorToggles.width / 4
        contentHeight: noteGrid.height
        contentWidth: pianoGrid.width + noteGrid.width
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
        clip: true

        PianoPane {
            id: pianoGrid
            z: 2
        }
        Grid {
            z: 3
            id: noteGrid
            x: 60
            flow: Grid.TopToBottom
            Layout.fillWidth: true
            Layout.fillHeight: true
            columns: 100
            rows: 96
            Repeater {
                model: noteGrid.columns * noteGrid.rows
                Rectangle {
                    border.width: 0.5
                    width: 20
                    height: 10
                    id: rectangle
                    color: "grey"
                }
            }
        }
    }
}
