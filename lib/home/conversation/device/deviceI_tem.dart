import 'package:flutter/material.dart';
import 'package:flutter_clone_wx/constant/constants.dart';

enum DeviceEnum { WIN, MAC }

//设备布局
class DeviceItem extends StatelessWidget {
  DeviceItem({this.deviceEnum}) : assert(deviceEnum != null);
  DeviceEnum deviceEnum;

  get _iconValue{
    return deviceEnum == DeviceEnum.MAC ?0xe656:0xe604;
  }
  get _deviceName{
    return deviceEnum == DeviceEnum.MAC ? "MAC":"Windows";
}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24.0,top: 10.0,right: 24,bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(AppColors.DividerColor)
          )
        ),
        color: Color(AppColors.ConversationBottomColor)
      ),
      child: Row(
        children: <Widget>[
          Icon(IconData(_iconValue,fontFamily: Contants.IconFontFamily)),
          SizedBox(width: 16,),
          Text("$_deviceName微信已登录，手机通知已关闭",style: AppStyles.deviceTitleStyle,)
        ],
      ),
    );
  }
}
