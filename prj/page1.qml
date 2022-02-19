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
                    //forTest.start()
                    //vegTime.start()
                }

            }

            Image {
                id: khak
                source: "qrc:/images/Khak_farm.jpg"
                anchors.fill: parent
            }
            Image {
                id: farm
                //visible: false
                source: "qrc:/images/tomato_farm.png"
                anchors.fill: parent
            }

            ToolTip
            {
                id : nowTime
                visible: test.hovered
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
                if(useManager.checkCropTime() === true)
                {
                    nowTime.text = "crop it sooner!!! : " + useManager.get_crop_spoiled() + "s";
                }
                else if(useManager.chackWaterTime() === true)
                {
                    nowTime.text = "crop time : " + useManager.getCropTime() + "s \nwater vegtebale sooner!!! : " + useManager.get_water_spoiled() + "s";
                }
                else
                {
                    nowTime.text = "crop time : " + useManager.getCropTime() + "s \nwater time : " + useManager.getWaterTime() + "s";
                }
            }

        }

        Timer
        {
            id : waterTime
            interval: (useManager.water_timer()) * 1000
            running: true
            onTriggered:
            {

            }
        }

        Timer
        {
            id : cropTime
            interval: (useManager.crop_timer()) * 1000
            running: true
            onTriggered:
            {

            }
        }

        Timer
        {
            id : spoiledWaterTime
            interval: (useManager.spoiled_water_timer()) * 1000
            running: true
            onTriggered:
            {

            }
        }

        Timer
        {
            id : spoiledCropTime
            interval: (useManager.spoiled_water_timer()) * 1000
            running: true
            onTriggered:
            {

            }
        }


    }



}
