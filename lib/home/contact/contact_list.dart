import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/home/contact/contact_item.dart';
import 'package:flutter_clone_wx/home/contact/entity/contact_entity.dart';

//联系人列表
class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<ContactEntity> _contacts;
  List<ContactEntity> _list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list = [
      ContactEntity(
          avatar: "assets/images/ic_new_friend.png",
          name: "新朋友",
          nameIndex: null),
      ContactEntity(
          avatar: "assets/images/ic_group_chat.png",
          name: "群聊",
          nameIndex: null),
      ContactEntity(
        avatar: "assets/images/ic_tag.png",
        name: "标签",
        nameIndex: null,
      ),
      ContactEntity(
          avatar: "assets/images/ic_public_account.png",
          name: "公众号",
          nameIndex: null),
    ];
    ContactModel contactModel = ContactModel.mock();
    _contacts = contactModel.contacts;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {

        if (index < _list.length ) {
          return ContactItem(
            contactEntity: _list[index],
          );
        } else {
          int position = index - _list.length;
          return ContactItem(
            contactEntity: _contacts[position],
          );
        }
      },
      itemCount: _list.length + _contacts.length,
    );
  }
}
