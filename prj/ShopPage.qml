import QtQuick 2.9
import QtQuick.Controls 2.5

Item
{
    Rectangle
    {
        width: root.width
        height: root.height
        color : "green"

        Rectangle
        {
            x : 120
            width: 100
            height: 30
            color: "red"
            z : 50
        }

        Button
        {

            width: 100
            height: 30
            text: "click"
            onClicked:
            {
                //stackView.pop();
            }
        }
    }


}
