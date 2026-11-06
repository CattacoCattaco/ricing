import QtQuick
import QtQuick.Controls

Slider {
    id: control
    value: 0.5

    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2

        implicitWidth: 150
        implicitHeight: 8

        width: control.availableWidth
        height: implicitHeight

        radius: height / 2

        color: "#879"

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height

            radius: parent.radius

            color: "#fb7"
        }
    }

    handle: Rectangle {
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2

        implicitWidth: 16
        implicitHeight: width

        width: implicitWidth
        height: implicitHeight

        radius: height / 2

        color: "#fb7"
    }
}