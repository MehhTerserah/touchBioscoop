import 'controller/no_notification_controller.dart';import 'package:flutter/material.dart';import 'package:templatetest/core/app_export.dart';import 'package:templatetest/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:templatetest/widgets/app_bar/appbar_title.dart';import 'package:templatetest/widgets/app_bar/custom_app_bar.dart';class NoNotificationScreen extends GetWidget<NoNotificationController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 35, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, onTap: onTapArrowleft3), title: AppbarTitle(text: "lbl_edit_profile".tr, margin: getMargin(left: 81))), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 25, top: 186, right: 25), child: CommonImageView(svgPath: ImageConstant.imgMaskgroup3, height: getSize(184.00), width: getSize(184.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 25, top: 33, right: 25), child: Text("lbl_no_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium16))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 25, top: 17, right: 25, bottom: 20), child: Text("msg_notifications_t".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Bluegray101)))]))))); } 
onTapArrowleft3() { Get.back(); } 
 }
