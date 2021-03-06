import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/home/conversation/conversation_item.dart';
import 'package:flutter_clone_wx/home/conversation/device/deviceI_tem.dart';
import 'package:flutter_clone_wx/home/conversation/entity/conversation.dart';

//会话列表
class ConversationList extends StatefulWidget {
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  List<Conversation> _list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list = ConversationData.mock();
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        if(index == 0){
          return DeviceItem(deviceEnum: DeviceEnum.MAC,);
        }else{
          return ConversationItem( _list[index-1]);
        }
      },
      itemCount: _list.length+1,
    );
  }
}
