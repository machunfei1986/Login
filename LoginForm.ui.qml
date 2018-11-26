import QtQuick 2.4
import Qt.labs.calendar 1.0
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4

Rectangle {
    id: loginPage
    width: 320
    height: 550
    color: "#00000000"
    property alias text1: text1
    property alias webButton: webButton
    property alias forgetPsd: forgetPsd
    property alias register: register
    property alias autoLoad: autoLoad
    property alias rememberPsd: rememberPsd
    property alias loadButton: loadButton
    property alias password: password
    property alias user: user

    Image {
        id: image
        anchors.fill: parent
        source: "images/login_background_03.png"

        TextField {
            id: user
            y: 168
            height: 29
            font.weight: Font.Light
            font.pointSize: 12

            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.3
            leftPadding: height * 2
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            placeholderText: qsTr("邮箱地址")

            validator: RegExpValidator {
                regExp: /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
            }
            font.family: "微软雅黑 Light"
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
                Image {
                    height: parent.height
                    width: height
                    anchors.left: parent.left
                    mipmap: true
                    anchors.verticalCenter: parent.verticalCenter
                    source: "./images/user_03.png"
                }
                Rectangle {
                    width: parent.width
                    height: 1
                    anchors.bottom: parent.bottom
                    color: "gray"
                }
            }
        }

        Image {
            id: image1
            x: 128
            y: 76
            anchors.bottom: user.top
            anchors.bottomMargin: 25
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/user_02.png"
        }

        TextField {
            id: password
            x: 30
            y: 0
            anchors.top: user.bottom
            anchors.topMargin: 20
            height: 29
            font.weight: Font.Light
            font.pointSize: 12
            leftPadding: height * 2
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            placeholderText: qsTr("密码")

            echoMode: TextInput.PasswordEchoOnEdit
            font.family: "微软雅黑 Light"

            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
                Image {
                    height: parent.height
                    width: height
                    anchors.left: parent.left
                    mipmap: true
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/password.png"
                }
                Rectangle {
                    width: parent.width
                    height: 1
                    anchors.bottom: parent.bottom
                    color: "gray"
                }
            }
        }

        Button {
            id: loadButton
            height: 30
            text: qsTr("登    录")
            anchors.top: row.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            font.pointSize: 12
            font.family: "微软雅黑 Light"
            background: Rectangle {
                color: loadButton.pressed ? "#c3bcbc" : "#fbf2f2"
                anchors.fill: parent
                radius: 5
            }
        }

        Row {
            id: row
            height: 30
            spacing: 20
            anchors.top: password.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30

            CheckBox {
                id: rememberPsd
                width: 150
                height: 30
                text: qsTr("        ")
                transformOrigin: Item.Left
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 0
                autoRepeat: false
                autoExclusive: false
                anchors.verticalCenter: parent.verticalCenter

                antialiasing: true
                scale: 0.5
                //spacing: 10
                display: AbstractButton.TextOnly
                checked: true
                background: Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    Text {
                        anchors.fill: parent
                        font.pointSize: 18
                        font.family: "微软雅黑 Light"
                        text: qsTr("  记住密码")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignRight
                    }
                }
            }

            CheckBox {
                id: autoLoad
                width: 150
                height: 30
                text: qsTr("         ")
                transformOrigin: Item.Right
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                antialiasing: true
                checked: true
                font.family: "微软雅黑 Light"
                font.pointSize: 12
                spacing: 10
                scale: 0.5
                display: AbstractButton.TextOnly
                background: Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    Text {
                        anchors.fill: parent
                        font.pointSize: 18
                        font.family: "微软雅黑 Light"
                        text: qsTr("  自动登录")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignRight
                    }
                }
            }
        }

        Row {
            id: row1
            height: 30
            anchors.top: loadButton.bottom
            anchors.topMargin: 25
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30

            Button {
                id: register
                width: 63
                height: 12

                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
                background: Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    Text {
                        id: text1
                        anchors.centerIn: parent
                        text: qsTr("立即注册>>")
                        color: "black"
                        font.family: "微软雅黑 Light"
                        font.pointSize: 10
                    }
                }
            }

            Button {
                id: forgetPsd
                width: 63
                height: 12

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                background: Rectangle {
                    anchors.fill: parent
                    color: "transparent"
                    Text {
                        anchors.centerIn: parent
                        text: qsTr("忘记密码?")
                        color: "black"
                        font.family: "微软雅黑 Light"
                        font.pointSize: 10
                    }
                }
            }
        }

        Button {
            id: webButton
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
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
                    font.pointSize: 10
                }
            }
        }
    }
}


/*##^## Designer {
    D{i:2;anchors_width:216;anchors_x:60}D{i:23;anchors_width:256;anchors_x:34;anchors_y:311}
}
 ##^##*/
