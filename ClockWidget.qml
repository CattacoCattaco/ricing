import Quickshell
import Quickshell.Io
import QtQuick

Item {
    property int spacing: 10

    Text {
        text: Time.date + " ".repeat(spacing) + Time.time
    }
}