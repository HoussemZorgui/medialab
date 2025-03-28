import 'package:flutter/material.dart';
import 'package:mediab/main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:mediab/components/MLChatListComponent.dart';
import 'package:mediab/screens/MLChatScreen.dart';
import 'package:mediab/utils/MLColors.dart';

class MLDoctorChatComponent extends StatefulWidget {
  static String tag = '/MLDoctorChatComponent';

  @override
  MLDoctorChatComponentState createState() => MLDoctorChatComponentState();
}

class MLDoctorChatComponentState extends State<MLDoctorChatComponent> {
  int notificationCounter = 3;
  List<String> unreadData = <String>['Dr. Miranda Kerr', 'Dr. Heldi Kulm '];
  List<String> otherData = <String>[
    'Dr.Stephen',
    'Dr. Miranda Kerr',
    'Dr. Miranda Kerr',
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Unread', style: boldTextStyle()),
          16.height,
          MLChatListComponent(
            unreadData,
            appStore.isDarkModeOn ? scaffoldDarkColor : mlColorGreyShade,
            MLChatScreen(),
          ),
          Divider(height: 32),
          Text('Other', style: boldTextStyle()),
          16.height,
          MLChatListComponent(
            otherData,
            appStore.isDarkModeOn ? scaffoldDarkColor : mlColorGreyShade,
            MLChatScreen(),
          ),
        ],
      ).paddingAll(16.0),
    );
  }
}
