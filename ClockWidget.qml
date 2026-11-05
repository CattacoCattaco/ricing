import Quickshell
import Quickshell.Io
import QtQuick

Item {
    property int spacing: 10

    Text {
        anchors.centerIn: parent

        text: Time.date + " ".repeat(spacing) + Time.time
        color: "#fb7"
    }
}