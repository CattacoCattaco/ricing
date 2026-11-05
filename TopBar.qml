import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      color: "#3f008f"

      ClockWidget {
        anchors.centerIn: parent
        spacing: 25
      }
    }
  }
}