import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

RowLayout {
    Text {
        anchors.verticalCenter: parent.verticalCenter

        text: Time.date
        color: "#fb7"
    }

    Text {
        anchors.verticalCenter: parent.verticalCenter

        text: Time.time
        color: "#fb7"
    }
}