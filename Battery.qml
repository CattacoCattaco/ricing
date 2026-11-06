pragma Singleton

import Quickshell
import Quickshell.Services.UPower
import QtQuick

Singleton {
    readonly property UPowerDevice device: UPower.displayDevice
    readonly property real charging: !UPower.onBattery
    readonly property real charge: device.energy / device.energyCapacity
    readonly property real chargePercent: Math.round(device.energy / device.energyCapacity * 100)
    readonly property color batteryStateColor: charging ? "#3d4" : chargePercent < 20 ? "#d13" : "#fd5"
}