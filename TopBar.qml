import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      id: topBar

      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      color: "#3f008f"

      RowLayout {
        spacing: 50
        anchors.centerIn: parent

        ClockWidget {
          spacing: 20
        }

        BatteryWidget {
          spacing: 5
        }

        Button {
          text: "change volume"

          onClicked: volumeSelector.item.visible = !volumeSelector.item.visible
        }
      }

      VolumeSelector {
        id: volumeSelector
        
        parentWindow: topBar
      }
    }
  }
}