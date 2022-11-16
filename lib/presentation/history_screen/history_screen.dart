import '../history_screen/widgets/history_item_widget.dart';import 'controller/history_controller.dart';import 'models/history_item_model.dart';import 'package:flutter/material.dart';import 'package:templatetest/core/app_export.dart';import 'package:templatetest/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:templatetest/widgets/app_bar/appbar_title.dart';import 'package:templatetest/widgets/app_bar/custom_app_bar.dart';class HistoryScreen extends GetWidget<HistoryController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 35, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, onTap: onTapArrowleft4), title: AppbarTitle(text: "lbl_history".tr, margin: getMargin(left: 97))), body: Container(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(top: 31), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.historyModelObj.value.historyItemList.length, itemBuilder: (context, index) {HistoryItemModel model = controller.historyModelObj.value.historyItemList[index]; return HistoryItemWidget(model);})))])))))); } 
onTapArrowleft4() { Get.back(); } 
 }