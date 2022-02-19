import QtQuick 2.9
import QtQuick.Controls 2.5
Item
{

    Rectangle
    {
        id : backGround
        width: root.width
        height : root.height
        color: "lightskyblue"

        /*Rectangle
        {
            id : myFarm
            width: backGround.height / 2
            height: width
            anchors.centerIn: parent

            MouseArea
            {

                anchors.fill: parent
                onClicked:
                {
                    myFarm.color = "lime"
                    console.log(Qt.formatTime(new Date() , "hh:mm:ss"))
                    clock.text = useManager.get_time();
                    forTest.start()
                }
            }

            Button
            {
                id:forToolTip
                anchors.left: myFarm.left
                anchors.top: myFarm.top
                width:parent.width/11
                height: parent.height/11

            }
            ToolTip
            {
                id : nowTime
                visible: forToolTip.hovered
                text: useManager.get_time();
            }


            color: "lime"


        }*/

        Button
        {
            width: backGround.height / 2
            height: width
            anchors.centerIn: parent
            id : test
            onClicked:
            {
                if(farm.visible == false)
                {
                    nowTime.visible = test.hovered
                    farm.visible = true
                }

            }

            Image {
                id: khak
                source: "qrc:/images/Khak_farm.jpg"
                anchors.fill: parent
            }
            Image {
                id: farm
                visible: false
                source: "qrc:/images/tomato_farm.png"
                anchors.fill: parent
            }

            ToolTip
            {
                id : nowTime
                visible: false
                text: useManager.get_time();
            }
        }

        Timer{
            id : forTest
            interval: 1
            running: true
            repeat: true
            onTriggered:
            {
                nowTime.text = "crop time : " + useManager.get_time() + "\nwater time : " + useManager.get_time();
            }

        }


    }



}
