import QtQuick 2.15
import QtQuick.Controls 2.15
import Futurevox
import QtQuick.Layouts

Pane {
    id: trackWindow
    ScrollView {
        anchors.fill: parent
        contentWidth: Constants.width
        contentHeight: Constants.height
        id: scrollView
        Column {
            RowLayout {

                Rectangle {
                    id: rectangle
                    width: Constants.width / 8
                    height: Constants.height / 32
                    border.width: 1
                    anchors.left: toggleToolbar.right
                    anchors.top: parent.top
                    color: "#0600ff"
                    Text {
                        id: lblTempo
                        text: qsTr("Tempo")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                    }
                }
                Rectangle {
                    width: Constants.width / (100 / 87.5)
                    height: Constants.height / 32
                    anchors.left: trackName.right

                    anchors.top: parent.top
                    border.width: 1
                    color: "grey"
                }
            }
            RowLayout {

                Rectangle {
                    width: Constants.width / 8
                    height: Constants.height / 32
                    border.width: 1
                    anchors.left: toggleToolbar.right
                    anchors.top: parent.top
                    color: "#0600ff"
                    Text {
                        id: lblTimeSig
                        text: qsTr("Time Sig")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                    }
                }
                Rectangle {
                    width: Constants.width / (100 / 87.5)
                    height: Constants.height / 32
                    anchors.left: trackName.right

                    anchors.top: parent.top
                    border.width: 1
                    color: "grey"
                }
            }
            RowLayout {

                Rectangle {
                    id: rectangle1
                    width: Constants.width / 8
                    height: Constants.height / 16
                    border.width: 1
                    anchors.left: toggleToolbar.right
                    anchors.top: parent.top
                    color: "#0600ff"
                    Column {
                        id: column
                        anchors.left: parent.left
                        anchors.right: parent.right
                        Button {
                            id: addVocalBtn

                            text: qsTr("Add Vocal Track")
                            anchors.left: parent.left
                            anchors.right: parent.right
                        }

                        Button {
                            id: addAudioBtn
                            text: qsTr("Add Audio Track")
                            anchors.left: parent.left
                            anchors.right: parent.right
                        }
                    }
                }

                Rectangle {
                    width: Constants.width / (100 / 87.5)
                    height: Constants.height / 16
                    anchors.left: trackName.right

                    anchors.top: parent.top
                    border.width: 1
                    color: "grey"
                }
            }
            Repeater {
                model: 1
                RowLayout {
                    Rectangle {
                        id: vocalistRectangle
                        width: Constants.width / 8
                        height: Constants.height / 4

                        border.width: 1
                        anchors.left: toggleToolbar.right
                        anchors.top: parent.top
                        color: "#0600ff"
                        clip: true
                        Image {
                            width: vocalistRectangle.width
                            height: vocalistRectangle.height
                            id: vocalPfp
                            source: "images/he.png"
                            Rectangle {
                                id: nameFrame
                                color: "#000000"
                                width: vocalistRectangle.width
                                height: vocalistRectangle.height / 7
                                opacity: 0.75
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.bottom: parent.bottom
                                TextEdit {
                                    id: textEdit
                                    width: 80
                                    height: 20
                                    text: qsTr("KUROI")
                                    font.pixelSize: 24
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                    color: "#ffffff"
                                }
                            }
                        }
                    }
                    Rectangle {
                        width: Constants.width / (100 / 87.5)
                        height: Constants.height / 4
                        id: trackBox
                        anchors.left: trackName.right

                        anchors.top: parent.top
                        border.width: 1
                        color: "grey"

                        Row {
                            id: row
                            x: 167
                            y: 9
                            width: 287
                            height: 162
                            Rectangle {
                                id: vocalPart
                                Layout.fillHeight: true
                                implicitWidth: 200
                            }
                        }
                    }
                }
            }
        }
    }
}
