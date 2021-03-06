import VPlay 2.0
import QtQuick 2.0
import "../common"
import ".."
// EMPTY SCENE

SceneBase {

    id:selectLevelScene

    // signal indicating that a level has been selected
    signal levelPressed(string selectedLevel)
    Rectangle{
        anchors.fill: parent
        color:"white"
        Column {
            anchors.centerIn: parent
            spacing: 10
            MenuButton {
                text: "Color Road"
                textColor: "white"
                color: "blue"
                onClicked: {
                    levelPressed("ColorRoad.qml");
                }
            }
            MenuButton {
                text: "Light Board"
                textColor: "white"
                color: "blue"
                onClicked: {
                    levelPressed("LightBoard.qml");
                }
            }
            MenuButton{
                text:"Rain Drops"
                textColor:"white"
                color:"blue"
                onClicked: {
                    GameInfo.rainedColors = [];
                    levelPressed("ColorRainWithClouds.qml");
                }
            }
            MenuButton{
                text:GameInfo.langBack
                textColor:"white"
                color:"red"
                onClicked: {
                    backButtonPressed()
                }
            }
        }

    }
}
