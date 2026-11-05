import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

RowLayout {
    Text {
        text: Time.date
        color: "#fb7"
    }

    Text {
        text: Time.time
        color: "#fb7"
    }
}