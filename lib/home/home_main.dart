import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:flutter_clone_wx/home/contact/contact_list.dart';
import 'package:flutter_clone_wx/home/conversation/conversation_list.dart';
import 'package:flutter_clone_wx/home/find/find.dart';
import 'package:flutter_clone_wx/home/my/personal_center.dart';
import 'package:fluttertoast/fluttertoast.dart';

//首页
class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

enum ActionItems { GROUP_CHAR, ADD_FRIEND, QR_SCAN, PALMENT, HELP }

class _HomeMainState extends State<HomeMain> {
  Color headBackground;
  int _currentIndex = 0;
  PageController _pageController;
  List<Widget> _pageView;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    headBackground = Color(AppColors.ThemeBackground);
    _pageController = PageController(initialPage: _currentIndex);
    _pageView = [ConversationList(), ContactList(), Find(), PersonalCenter()];
  }

  _buildPopupMunuIem(IconData iconData, String title) {
    return Row(
      children: <Widget>[
        Icon(iconData),
        SizedBox(width: Contants.MenumMargin,),
        Text(
          title,
          style: AppStyles.menumTitleStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: headBackground,
        title: Text(
          "微信",
          style: AppStyles.titleStyle,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                IconData(0xe638, fontFamily: Contants.IconFontFamily),
                size: 25,
                color: Color(AppColors.TitleTextColor),
              ),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "搜索",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    textColor: Colors.red);
              }),
          Container(
            child: PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuItem<ActionItems>>[
                  PopupMenuItem(
                    child: _buildPopupMunuIem(
                        IconData(0xeb81, fontFamily: Contants.IconFontFamily),
                        "发起群聊"),
                    value: ActionItems.GROUP_CHAR,
                  ),
                  PopupMenuItem(
                    child: _buildPopupMunuIem(
                        IconData(0xe618, fontFamily: Contants.IconFontFamily),
                        "添加朋友"),
                    value: ActionItems.ADD_FRIEND,
                  ),
                  PopupMenuItem(
                    child: _buildPopupMunuIem(
                        IconData(0xe66d, fontFamily: Contants.IconFontFamily),
                        "扫一扫"),
                    value: ActionItems.QR_SCAN,
                  ),
                  PopupMenuItem(
                    child: _buildPopupMunuIem(
                        IconData(0xe613, fontFamily: Contants.IconFontFamily),
                        "收付款"),
                    value: ActionItems.PALMENT,
                  ),
                  PopupMenuItem(
                    child: _buildPopupMunuIem(
                        IconData(0xe614, fontFamily: Contants.IconFontFamily),
                        "帮助与反馈"),
                    value: ActionItems.HELP,
                  ),
                ];
              },
              tooltip: "123",
              color: Color(AppColors.MenumBackgroundColor),
              onSelected: (actionItems) {
                setState(() {
                  if (actionItems == ActionItems.GROUP_CHAR) {
                    Fluttertoast.showToast(
                        msg: "发起群聊", gravity: ToastGravity.CENTER);
                  } else if (actionItems == ActionItems.ADD_FRIEND) {
                    Fluttertoast.showToast(
                        msg: "添加朋友", gravity: ToastGravity.CENTER);
                  } else if (actionItems == ActionItems.QR_SCAN) {
                    Fluttertoast.showToast(
                        msg: "扫一扫", gravity: ToastGravity.CENTER);
                  } else if (actionItems == ActionItems.PALMENT) {
                    Fluttertoast.showToast(
                        msg: "收付款", gravity: ToastGravity.CENTER);
                  } else if (actionItems == ActionItems.HELP) {
                    Fluttertoast.showToast(
                        msg: "帮助与反馈", gravity: ToastGravity.CENTER);
                  }
                });
              },
              icon: IconButton(
                icon: Icon(
                  IconData(0xe603, fontFamily: Contants.IconFontFamily),
                  size: 27,
                  color: Color(AppColors.TitleTextColor),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: PageView.builder(
          controller: _pageController,
          itemCount: _pageView.length,
          itemBuilder: (context, index) {
            return _pageView[_currentIndex];
          },
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 3,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            }
            );
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  IconData(0xe601, fontFamily: Contants.IconFontFamily),
                  color: Color(AppColors.HomeButtomTextColor),
                  size: Contants.Home_Bottom_Size,
                ),
                title: Text(
                  Contants.HOME_WeChat,
                  style: AppStyles.homeButtomStyle,
                ),
                activeIcon: Icon(
                  IconData(0xe61e, fontFamily: Contants.IconFontFamily),
                  size: Contants.Home_Bottom_Size,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                    IconData(0xe60a, fontFamily: Contants.IconFontFamily),
                    color: Color(AppColors.HomeButtomTextColor),
                    size: Contants.Home_Bottom_Size),
                title: Text(
                  Contants.HOME_Communication,
                  style: TextStyle(color: Colors.black),
                ),
                activeIcon: Icon(
                  IconData(0xe685, fontFamily: Contants.IconFontFamily),
                  size: Contants.Home_Bottom_Size,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                    IconData(0xe649, fontFamily: Contants.IconFontFamily),
                    color: Color(AppColors.HomeButtomTextColor),
                    size: Contants.Home_Bottom_Size),
                title: Text(
                  Contants.HOME_Find,
                  style: AppStyles.homeButtomStyle,
                ),
                activeIcon: Icon(
                  IconData(0xe611, fontFamily: Contants.IconFontFamily),
                  size: Contants.Home_Bottom_Size,
                )),
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe69d, fontFamily: Contants.IconFontFamily),
                  color: Color(AppColors.HomeButtomTextColor),
                  size: Contants.Home_Bottom_Size),
              title: Text(
                Contants.HOME_My,
                style: AppStyles.homeButtomStyle,
              ),
                activeIcon: Icon(
                  IconData(0xe612, fontFamily: Contants.IconFontFamily),
                  size: Contants.Home_Bottom_Size,
                )
            ),
          ]),
    );
  }
}
