import QtQuick 2.15
import QtQuick.Controls 2.15
import Futurevox
import QtQuick.Layouts

Column {

    Repeater {
        model: 8
        OctavePane {
            id: backPianoGrid
        }
    }
}
