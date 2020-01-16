import 'package:flutter/material.dart';

class AppColors {
  //首页底部bottom文字颜色
  static const HomeButtomTextColor = 0xcc191919;
  static const TitleTextColor = 0xcc171717; //头部文字颜色
  static const DividerColor = 0xccE5E5E5;  //会话列表线条颜色
  static const DescTextColor = 0xff9e9e9e; //会话列表描述文字颜色
  static const ConversationMuteIconColor = 0xffd8d8d8;   //会话铃铛颜色
  static const MenumTextColor = 0xffffffff;// 菜单栏文字颜色
  static const MenumBackgroundColor = 0xff333333;// 菜单栏背景颜色
  static const Blackcolor = Colors.black;
  static const ThemeBackground = 0xffEDEDED;
  static const WhiteColor = Colors.white;
  static const ConversationBottomColor = 0xFFF7F7F7;  //会话详情底部布局背景颜色
  static const DeviceTitleColor = 0xff606062;  //设备描述文字颜色

}

class AppStyles {
  //首页底部bottom样式
  static const homeButtomStyle =
      TextStyle(fontSize: 14, color: Color(AppColors.HomeButtomTextColor));
  //头部样式
  static const titleStyle = TextStyle(
      fontSize: 20,
      color: Color(AppColors.TitleTextColor),
      fontWeight: FontWeight.w600);
  //会话列表设备文字样式
  static const deviceTitleStyle = TextStyle(
    fontSize: 13,
    color: Color(AppColors.DeviceTitleColor)
  );
  //会话标题样式
  static const conversationTitleStyle = TextStyle(
    fontSize: 15,
    color: Color(AppColors.TitleTextColor),
  );
  //会话描述文字样式
  static const conversationDescStyle = TextStyle(
    fontSize: 12,
    color: Color(AppColors.DescTextColor),
  );
  //会话小红点数量样式
  static const UnreadMsgCountDot = TextStyle(
      fontSize: 12,
      color: Colors.white
  );
  //菜单栏文字样式
  static const menumTitleStyle = TextStyle(
    fontSize: 12,
    color: Color(AppColors.MenumTextColor)
  );
}

class Routes {
  static const Home = "/";
  //会话详情
  static const ConversationDetails = "/home/conversation/details";

}

class Contants {
  //首页底部bottom大小
  static const Home_Bottom_Size = 28.0;
  //会话item高度
  static const Conversation_Item_Height = 70.0;
  //会话小红点大小
  static const UnReadMsgNotifyDotSize = 20.0;

  static const IconFontFamily = "appIcontFont";
  static const String HOME_WeChat = "微信";

  static const String HOME_Communication = "通讯录";

  static const String HOME_Find = "发现";

  static const String HOME_My = "我";

  static const ConversationAvatarSize = 50.0; //会话列表头像大小

  //菜单栏边距
  static const MenumMargin = 10.0;

  //圆角弧度
  static const Radian = 6.0;
}
