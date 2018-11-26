import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 320
    height: 550
    title: qsTr("My App")

    Settings {
        id: userLoginSettings
        property string userName
        property string password
        property string email
        property bool remeberPassword: true
        property bool autoLoad: true
        readonly property int maxLenthUserName: 100
        readonly property int maxLenthPassword: 20
    }

    ToolBar {
        id: header
        width: parent.width
        height: toolButton.height
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            anchors.fill: parent
            color: "red"
        }

        RowLayout {
            anchors.fill: parent
            ToolButton {
                id: toolButton
                height: parent.height
                width: height
                text: qsTr("Tool Button")
                //flat: false
                display: AbstractButton.IconOnly
                icon.source: stackView.depth > 1 ? "/images/back.png" : "/images/menu.png"
                onClicked: /*stackView.depth > 1 ? stackView.pop() : */ drawer.open()
            }

            Label {
                id: title
                anchors.centerIn: parent
                elide: Label.ElideMiddle
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
                font.pointSize: 14
                font.family: "微软雅黑 Light"
                text: qsTr("标题")
            }
            Label {
                height: parent.height
                width: height
            }
        }
    }

    Drawer {
        id: drawer
        width: parent.width * 0.75
        height: parent.height

        ListView {
            id: listView
            anchors.fill: parent

            headerPositioning: ListView.OverlayHeader

            delegate: Rectangle {
                id: button
                property bool pressed: false
                width: listView.width
                height: listView.height * 0.125

                Text {
                    anchors.leftMargin: 30
                    height: parent.height
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.family: "微软雅黑 Light"
                    font.pointSize: 12
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                Image {
                    anchors.rightMargin: 30
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    mipmap: true
                    fillMode: Image.PreserveAspectFit
                    source: "./images/go.png"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: parent.color = "lightGray"
                    onExited: parent.color = "transparent"
                    onClicked: {
                        console.log("current index = ", index)
                        parent.pressed = true
                    }
                }
            }

            model: ListModel {
                ListElement {
                    name: "一二三四"
                }
                ListElement {
                    name: "五六七八"
                }
                ListElement {
                    name: "九十十一"
                }
                ListElement {
                    name: "十一十二"
                }
                ListElement {
                    name: "十三十四"
                }
            }

            header: Rectangle {
                id: listViewHeader
                z: parent.z + 2
                width: listView.width
                height: listView.height * 0.2
                color: "white"
                RowLayout {
                    anchors.fill: parent
                    Layout.leftMargin: 20
                    Layout.rightMargin: 40

                    Image {
                        id: logo
                        width: height
                        height: parent.height
                        Layout.leftMargin: 20
                        source: "./images/user.png"
                    }

                    Text {
                        id: userName
                        text: qsTr("user name")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 16
                    }
                }
                MenuSeparator {
                    parent: listViewHeader
                    width: listView.width
                    anchors.verticalCenter: parent.bottom
                    visible: !ListView.atYBeginning
                }
            }

            footer: Pane {
                id: listViewFooter

                width: parent.width
                contentHeight: listView.height * 0.05
                Label {
                    id: version
                    anchors.centerIn: parent
                    text: qsTr("版本号: V 1.0.0")
                    font.family: "微软雅黑 Light"
                    font.pointSize: 12
                }

                MenuSeparator {
                    parent: listViewFooter
                    width: listView.width
                    padding: 0
                    topPadding: 2
                    contentItem: Rectangle {
                        implicitWidth: parent.width
                        implicitHeight: 1
                        color: "#1e000000"
                    }
                }
            }

            ScrollIndicator.vertical: ScrollIndicator {
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
    }

    Login {
        id: loginPage
        anchors.fill: parent
        visible: false
        z: parent.z + 3
    }
    RegisterVerify{
        id: registerVerifyPage
        anchors.fill: parent
        visible: false
        z: parent.z + 4
    }

    Register {
        id: registerPage
        anchors.fill: parent
        visible: false
        z: parent.z + 5
    }

    Component.onCompleted: {
        loginPage.visible = true
    }

    Connections {
        target: loginPage
        onShowRegisterPage: registerVerifyPage.visible = true
    }
    Connections {
        target: registerVerifyPage
        onShowLoginPage: registerVerifyPage.visible = false
    }
    Connections {
        target: registerPage
        onShowLoginPage: registerPage.visible = false
    }
    Connections {
        target: registerVerifyPage
        onShowRegisterPage: {
            registerVerifyPage.visible = false
            registerPage.visible = true
        }
    }
    Connections {
        target: loginPage
        onShowMainWindow: {
            loginPage.visible = false
            registerVerifyPage.visible = true
        }
    }
}

/*##^## Designer {
    D{i:12;anchors_height:160;anchors_width:110;anchors_x:0;anchors_y:0}
}
 ##^##*/

