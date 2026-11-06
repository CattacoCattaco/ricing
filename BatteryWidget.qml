import Quickshell
import QtQuick
import QtQuick.Layouts

RowLayout {
    Rectangle {
        height: percentLabel.height
        width: height * 3 / 5
        
        color: "#879"

        Rectangle {
            y: parent.height - height

            height: parent.height * Battery.charge
            width: parent.width

            color: Battery.batteryStateColor
        }
    }

    Text {
        id: percentLabel

        text: Battery.chargePercent + "%"
        color: Battery.batteryStateColor
    }
}