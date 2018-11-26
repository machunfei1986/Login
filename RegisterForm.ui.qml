import QtQuick 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.4

Rectangle {
    id: register
    width: 320
    height: 550
    property alias webButton: webButton
    property alias loginButton: loginButton
    property alias registerButton: registerButton
    property alias passwordConfirm: passwordConfirm
    property alias password: password
    property alias userName: userName

    Image {
        id: image
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "images/login_background_03.png"

        Image {
            id: image1
            anchors.bottom: userName.top
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/register.png"
        }

        TextField {
            id: userName
            height: 30
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 10
            font.family: "微软雅黑 Light"
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.3
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            leftPadding: height * 2
            placeholderText: qsTr("请输入邮箱地址")
            background: Rectangle {
                id: rectangle1
                anchors.fill: parent
                color: "transparent"
                border.color: "white"
                border.width: 1
                radius: height / 2
                Image {
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                    anchors.top: parent.top
                    anchors.topMargin: 3
                    width: height
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    source: "./images/email.png"
                }
            }
        }

        TextField {
            id: password
            height: 30
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 10

            font.family: "微软雅黑 Light"
            anchors.top: userName.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            leftPadding: height * 2
            echoMode: TextInput.PasswordEchoOnEdit
            placeholderText: qsTr("请输入密码")

            background: Rectangle {
                id: rectangle3
                anchors.fill: parent
                color: "transparent"
                border.color: "white"
                border.width: 1
                radius: height / 2
                Image {
                    anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    fillMode: Image.PreserveAspectFit
                    width: height
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.topMargin: 5
                    anchors.bottomMargin: 5
                    source: "images/password_01.png"
                }
            }
        }

        TextField {
            id: passwordConfirm
            height: 30
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 10

            font.family: "微软雅黑 Light"
            anchors.top: password.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            leftPadding: height * 2
            echoMode: TextInput.PasswordEchoOnEdit
            placeholderText: qsTr("请再次输入密码")

            background: Rectangle {
                id: rectangle2
                anchors.fill: parent
                color: "transparent"
                border.color: "white"
                border.width: 1
                radius: height / 2
                Image {
                    anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    fillMode: Image.PreserveAspectFit
                    width: height
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.topMargin: 5
                    anchors.bottomMargin: 5
                    source: "images/password_01.png"
                }
            }
        }

        Button {
            id: registerButton

            height: 30
            text: qsTr("注    册")
            background: Rectangle {
                color: registerButton.pressed ? "#c3bcbc" : "#fbf2f2"
                radius: 5
                anchors.fill: parent
            }
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 30
            anchors.leftMargin: 30
            anchors.top: passwordConfirm.bottom
            anchors.rightMargin: 30
            font.pointSize: 12
            font.family: "微软雅黑 Light"
        }

        Button {
            id: webButton
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            height: 30

            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
                Text {
                    anchors.centerIn: parent
                    text: qsTr("www.trafficlab.cn")
                    font.underline: true
                    color: "black"
                    font.family: "微软雅黑 Light"
                    font.pointSize: 8
                }
            }
        }

        Row {
            id: row
            height: 30
            spacing: -10
            anchors.top: registerButton.bottom
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("已经有一个账号 ?  点我 ")
                font.pointSize: 8
                font.family: "微软雅黑 Light"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Button {
                id: loginButton
                width: 50
                height: 20

                anchors.left: label.right
                anchors.leftMargin: 5

                anchors.verticalCenter: parent.verticalCenter
                background: Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    Text {
                        anchors.centerIn: parent
                        text: qsTr("登录")
                        color: "white"
                        font.underline: true
                        font.family: "微软雅黑"
                        font.pointSize: 10
                    }
                }
            }
        }
    }
}


/*##^## Designer {
    D{i:4;anchors_height:30}D{i:8;anchors_height:30}D{i:22;anchors_width:50}D{i:18;anchors_width:200;anchors_x:37;anchors_y:425}
D{i:1;anchors_x:8;anchors_y:137}
}
 ##^##*/
