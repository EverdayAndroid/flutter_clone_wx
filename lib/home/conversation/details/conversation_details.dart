import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

//会话详情界面
class ConversationDetails extends StatefulWidget {
  @override
  _ConversationDetailsState createState() => _ConversationDetailsState();
}

class _ConversationDetailsState extends State<ConversationDetails> {
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title,
          style: AppStyles.titleStyle,
          textAlign: TextAlign.center,
          textWidthBasis: TextWidthBasis.longestLine,
        ),
        backgroundColor: Color(AppColors.ThemeBackground),
        leading: IconButton(
            icon: Icon(
              IconData(0xe623, fontFamily: Contants.IconFontFamily),
              color: AppColors.Blackcolor,
            ),
            onPressed: () {
              Navigator.pop(context, "123");
              Fluttertoast.showToast(msg: "返回", gravity: ToastGravity.CENTER);
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                IconData(0xe619, fontFamily: Contants.IconFontFamily),
                color: AppColors.Blackcolor,
              ),
              onPressed: () {
                Fluttertoast.showToast(msg: "更多", gravity: ToastGravity.CENTER);
              })
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Center(
              child: Text("会话详情"),
            )),
            Container(
              height: 60,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: Contants.MenumMargin,
                  ),
                  Icon(
                    IconData(0xe622, fontFamily: Contants.IconFontFamily),
                    size: 25.0,
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 5, right: 5.0, top: 10, bottom: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.only(left: 5, right: 5, bottom: 6),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Contants.Radian),
                      color: AppColors.WhiteColor,
                    ),
                  )),
                  Icon(
                    IconData(0xe620, fontFamily: Contants.IconFontFamily),
                    size: 25.0,
                  ),
                  SizedBox(
                    width: Contants.MenumMargin,
                  ),
                  Icon(
                    IconData(0xe61b, fontFamily: Contants.IconFontFamily),
                    size: 27.0,
                  ),
                  SizedBox(
                    width: Contants.MenumMargin,
                  )
                ],
              ),
              color: Color(AppColors.ConversationBottomColor),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.5,color: Color(AppColors.ConversationBottomColor))
          )
        ),
      ),
      backgroundColor: Color(AppColors.ThemeBackground),
    );
  }
}
