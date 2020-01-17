//联系人数据
import 'package:flutter/material.dart';

class ContactEntity {
  ContactEntity(
      {@required this.avatar, @required this.name, @required this.nameIndex})
      : assert(avatar != null),
        assert(name != null);

  String avatar;
  String name;
  String nameIndex;

  bool isNetAvatar(){
    if(avatar.contains("http")||avatar.contains("https")){
      return true;
    }
    return false;
  }

}

class ContactModel{

  ContactModel(this.contacts);
  List<ContactEntity> contacts;
  static mock(){
    return ContactModel(list);
  }
}


List<ContactEntity> list = [
  ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
    name: 'Maurice Sutton',
    nameIndex: 'M',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
    name: 'Jerry',
    nameIndex: 'J',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/17.jpg',
    name: 'Dangdang',
    nameIndex: 'D',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/55.jpg',
    name: 'Teddy',
    nameIndex: 'T',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/11.jpg',
    name: 'Steave',
    nameIndex: 'S',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/65.jpg',
    name: 'Vivian',
    nameIndex: 'V',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/50.jpg',
    name: 'Mary',
    nameIndex: 'M',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/91.jpg',
    name: 'David',
    nameIndex: 'D',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/women/60.jpg',
    name: 'Bob',
    nameIndex: 'B',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/60.jpg',
    name: 'Jeff Green',
    nameIndex: 'J',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/45.jpg',
    name: 'Adam',
    nameIndex: 'A',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/7.jpg',
    name: 'Michel',
    nameIndex: 'M',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/35.jpg',
    name: 'Green',
    nameIndex: 'G',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/64.jpg',
    name: 'Jack Ma',
    nameIndex: 'J',
  ),
   ContactEntity(
    avatar: 'https://randomuser.me/api/portraits/men/86.jpg',
    name: 'Tom',
    nameIndex: 'T',
  ),
   ContactEntity(
    avatar: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537868900176&di=ddbe94a75a3cc33f880a5f3f675b8acd&imgtype=0&src=http%3A%2F%2Fs2.sinaimg.cn%2Fmw690%2F003wRTwMty6IGZWzd2p31',
    name: '张伟',
    nameIndex: 'Z',
  ),
   ContactEntity(
    avatar: 'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1537858866&di=fe35e4465c73122f14e1c9475dd68e47&src=http://a2.att.hudong.com/63/26/01300001128119143503262347361.jpg',
    name: '张益达',
    nameIndex: 'Z',
  )


];