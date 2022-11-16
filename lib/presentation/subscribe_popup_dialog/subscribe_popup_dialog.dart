import 'controller/subscribe_popup_controller.dart';import 'package:flutter/material.dart';import 'package:templatetest/core/app_export.dart';import 'package:templatetest/widgets/custom_button.dart';import 'package:templatetest/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class SubscribePopupDialog extends StatelessWidget {SubscribePopupDialog(this.controller);

SubscribePopupController controller;

@override Widget build(BuildContext context) { return Container(width: double.infinity, decoration: AppDecoration.fillBluegray800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 29, top: 34, right: 29), child: CommonImageView(svgPath: ImageConstant.imgLocation, height: getVerticalSize(58.00), width: getHorizontalSize(78.00)))), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(213.00), margin: getMargin(left: 29, top: 26, right: 29), child: Text("msg_be_a_premium_us".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsMedium18WhiteA700ab))), Padding(padding: getPadding(left: 29, top: 35, right: 29), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomIconButton(height: 24, width: 24, variant: IconButtonVariant.FillWhiteA70063, shape: IconButtonShape.CircleBorder12, padding: IconButtonPadding.PaddingAll7, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 15, top: 5, bottom: 6), child: Text("lbl_ad_free".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700a2))])), Padding(padding: getPadding(left: 29, top: 15, right: 29), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 24, width: 24, variant: IconButtonVariant.FillWhiteA70063, shape: IconButtonShape.CircleBorder12, padding: IconButtonPadding.PaddingAll7, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 15, top: 5, bottom: 6), child: Text("msg_get_access_to_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700a2))])), Padding(padding: getPadding(left: 29, top: 15, right: 29), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 24, width: 24, variant: IconButtonVariant.FillWhiteA70063, shape: IconButtonShape.CircleBorder12, padding: IconButtonPadding.PaddingAll7, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 15, top: 6, bottom: 3), child: Text("msg_cancel_anytime".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12WhiteA700a2))])), CustomButton(width: 263, text: "lbl_subscribe".tr, margin: getMargin(left: 29, top: 36, right: 29, bottom: 20), onTap: onTapSubscribe, alignment: Alignment.center)])); } 
onTapSubscribe() { Get.toNamed(AppRoutes.choosePlanScreen); } 
 }