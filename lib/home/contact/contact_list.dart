import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';
import 'package:flutter_clone_wx/home/contact/contact_item.dart';
import 'package:flutter_clone_wx/home/contact/entity/contact_entity.dart';
import 'package:fluttertoast/fluttertoast.dart';

//联系人列表
class ContactList extends StatefulWidget {
  Color _lettersColor = Colors.transparent;
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<ContactEntity> _contacts = [];
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
    _contacts..addAll(contactModel.contacts)..addAll(contactModel.contacts)..addAll(contactModel.contacts)..addAll(contactModel.contacts);
    _contacts.sort((ContactEntity a,ContactEntity b) => a.nameIndex.compareTo(b.nameIndex));
  }

  List<Widget> _letters = Contants.INDEX_BAR_WORDS.map((String text){
    return Expanded(child: Text(text));
  }).toList();

  Widget _buildIndexBar(BuildContext context,BoxConstraints constraints){
    var totalHeight = constraints.biggest.height;
    return GestureDetector(
      onVerticalDragDown: (details){
        setState(() {
          widget._lettersColor = Colors.black45;
        });
        var y = details.globalPosition.dy;
        Fluttertoast.showToast(msg: "onVerticalDragDown $totalHeight,$y");
      },
      onVerticalDragUpdate: (details){
        var y = details.globalPosition.dy;
        Fluttertoast.showToast(msg: "onVerticalDragUpdate  $y",gravity: ToastGravity.CENTER);
      },
      onVerticalDragCancel: (){
        setState(() {
          widget._lettersColor = Colors.transparent;
        });
        Fluttertoast.showToast(msg: "onVerticalDragCancel",gravity: ToastGravity.CENTER);
      },
      child: Column(
        children: _letters,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        ListView.builder(
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
        ),
        Positioned(child: Container(
          width: 30,
          color: widget._lettersColor,
          child: LayoutBuilder(
            builder: _buildIndexBar,
          )
        ))
      ],
    )

      ;
  }
}
