/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import Futurevox
import QtQuick.Layouts
import QtQuick.Controls 2.4
Rectangle {
    id: listView
    Layout.maximumWidth: 1920
    Layout.maximumHeight: 1020
    height: Constants.height
    width: Constants.width
    Layout.fillHeight: true
    Layout.fillWidth: true
    ToolBar {
        id: toolBar
        Layout.fillWidth: true
        position: ToolBar.Header
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        Row {
            ToolButton {
                id: toolButton
                text: qsTr("File")
            }

            ToolButton {
                id: toolButton1
                text: qsTr("Edit")
            }
        }
    }

    PlaybackControls {
        Layout.fillWidth: true
        id: playbackControls
        anchors.left: parent.left
        anchors.right: parent.right
        implicitHeight: 60
        anchors.top: toolBar.bottom
    }

    TabBar{
        id:bar
        width: parent.width
        height: 20
        anchors.right: parent.right
        anchors.top: playbackControls.bottom
        anchors.left: parent.left
        TabButton{
            text:qsTr("Tracks")
            width: implicitWidth
        }
        TabButton{
            text:qsTr("Editor")
            width: implicitWidth
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        anchors.right: parent.right
        anchors.top: bar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        TrackColumn {
            Layout.fillHeight: true
            Layout.fillWidth: true
            id: trackSection
        }

        MidiEditor {
            Layout.fillHeight: true
            Layout.fillWidth: true
            id: editorSection
        }
    }





}
