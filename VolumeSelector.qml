import Quickshell
import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Controls
import qs.components.controls

Scope {
    id: root

    required property QsWindow parentWindow
    readonly property QtObject item: loader.item

    PwObjectTracker {
        objects: [ Pipewire.defaultAudioSink ]
    }

    Connections {
        target: Pipewire.defaultAudioSink?.audio

        function onVolumeChanged(): void {
            item.visible = true
        }
    }

    LazyLoader {
        id: loader

        loading: true

        PopupWindow {
            id: window

            anchor.window: root.parentWindow
            anchor.rect.x: parentWindow.width / 2 - implicitWidth / 2
            anchor.rect.y: parentWindow.height + implicitHeight / 3

            implicitWidth: 400
            implicitHeight: 30

            color: "transparent"

            visible: false
            
            Rectangle {
                anchors.fill: parent

                radius: window.implicitHeight / 2
                
                color: "#2f006f"

                StyledSlider {
                    id: volumeSlider
                    
                    anchors.fill: parent
                    anchors.leftMargin: window.implicitHeight / 2
                    anchors.rightMargin: window.implicitHeight / 2

                    from: 0
                    value: Pipewire.defaultAudioSink?.audio.volume
                    to: 1

                    onMoved: Pipewire.defaultAudioSink.audio.volume = value
                }
            }
        }
    }
}
