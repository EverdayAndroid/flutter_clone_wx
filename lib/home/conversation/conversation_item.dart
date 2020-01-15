import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:flutter_clone_wx/home/conversation/entity/conversation.dart';
import 'package:fluttertoast/fluttertoast.dart';

//会话行布局
class ConversationItem extends StatelessWidget {
  ConversationItem(this._conversation) : assert(_conversation != null);
  Conversation _conversation;
  Widget avater;
  Widget avatarContainer;
  Offset _topPos;
  @override
  Widget build(BuildContext context) {
    if (_conversation.isAvatarFromNet()) {
      avater = Container(
        width: Contants.ConversationAvatarSize,
        height: Contants.ConversationAvatarSize,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: FadeInImage.assetNetwork(
              placeholder: "assets/images/default_nor_avatar.png",
              image: _conversation.avatar),
        ),
      );
    } else {
      avater = Image.asset(
        _conversation.avatar,
        width: Contants.ConversationAvatarSize,
        height: Contants.ConversationAvatarSize,
      );
    }
    if (_conversation.unreadMsgCount > 0) {
      Widget unreadMsgCountText = Container(
        alignment: Alignment.center,
        width: Contants.UnReadMsgNotifyDotSize,
        height: Contants.UnReadMsgNotifyDotSize,
        child: Text(
          _conversation.unreadMsgCount.toString(),
          style: AppStyles.UnreadMsgCountDot,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.red),
      );

      avatarContainer = Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topRight,
        children: <Widget>[
          avater,
          Positioned(
            child: unreadMsgCountText,
            top: -6,
            right: -3,
          )
        ],
      );
    } else {
      avatarContainer = avater;
    }

    return Material(
      child: InkWell(
        onTap: (){},
        onLongPress: (){
          Fluttertoast.showToast(msg: "长安事件");
        },
        onTapDown: (details){
          _topPos = details.globalPosition;
        },
        child: FlatButton(
            onPressed: null,
            child: Container(
              child: Row(children: <Widget>[
                avatarContainer,
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Expanded(
                      child: Container(
                    height: Contants.Conversation_Item_Height,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _conversation.title,
                                style: AppStyles.conversationTitleStyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _conversation.des,
                                style: AppStyles.conversationDescStyle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              _conversation.updateAt,
                              style: AppStyles.conversationDescStyle,
                            ),
                            Container(
                              child: _conversation.isMute == true
                                  ? Icon(
                                      IconData(0xe694,
                                          fontFamily: Contants.IconFontFamily),
                                      color: Color(
                                          AppColors.ConversationMuteIconColor),
                                    )
                                  : SizedBox(
                                      height: 40,
                                    ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(AppColors.DividerColor),
                                style: BorderStyle.solid))),
                  )),
                )
              ]),
            )),
      ),
    );
  }
}
