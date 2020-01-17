import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:flutter_clone_wx/home/contact/entity/contact_entity.dart';

//通讯录适配器
class ContactItem extends StatelessWidget {
  ContactItem({@required this.contactEntity}) : assert(contactEntity != null);
  ContactEntity contactEntity;
  @override
  Widget build(BuildContext context) {
    Widget avatar;
    if(contactEntity.isNetAvatar()){
      avatar = Container(
        width: Contants.ConversationAvatarSize,
        height: Contants.ConversationAvatarSize,
        child: ClipRRect(
          child: FadeInImage.assetNetwork(placeholder: Contants.DefaultAvatar, image: contactEntity.avatar),
          borderRadius: BorderRadius.circular(Contants.Radian),
        ),
      ) ;
    }else{
      avatar = ClipRRect(
        child: Image.asset(
          contactEntity.avatar,
          width: Contants.ConversationAvatarSize,
          height: Contants.ConversationAvatarSize,
        ),
        borderRadius: BorderRadius.circular(Contants.Radian),
      );
    }

    return Container(
      padding: EdgeInsets.only(
          left: Contants.MenumMargin, top: 5),
      child: Container(
        child:Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                avatar,
                SizedBox(
                  width: Contants.MenumMargin,
                ),
                Text(contactEntity.name,style: AppStyles.conversationTitleStyle,)
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 60,top: 5),
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Color(AppColors.DividerColor)))
              ),
            )
          ],
        ),

      ) ,

    );
  }
}
