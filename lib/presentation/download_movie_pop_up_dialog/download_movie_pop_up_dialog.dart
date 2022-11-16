import 'controller/download_movie_pop_up_controller.dart';import 'package:flutter/material.dart';import 'package:templatetest/core/app_export.dart';import 'package:templatetest/widgets/custom_button.dart';import 'package:templatetest/widgets/custom_checkbox.dart';
// ignore_for_file: must_be_immutable
class DownloadMoviePopUpDialog extends StatelessWidget {DownloadMoviePopUpDialog(this.controller);

DownloadMoviePopUpController controller;

@override Widget build(BuildContext context) { return Container(width: double.infinity, decoration: AppDecoration.fillBluegray800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 30, top: 34, right: 30), child: CommonImageView(svgPath: ImageConstant.imgFloatingicon, height: getSize(84.00), width: getSize(84.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 30, top: 24, right: 30), child: Text("lbl_download_file".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20))), Obx(() => CustomCheckbox(text: "lbl_height_1080p".tr, iconSize: 24, value: controller.checkbox.value, padding: getPadding(left: 30, top: 40, right: 30), variant: CheckboxVariant.FillWhiteA700, fontStyle: CheckboxFontStyle.PoppinsMedium12, onChange: (value) {controller.checkbox.value = value;})), Obx(() => CustomCheckbox(text: "lbl_mid_720p".tr, iconSize: 24, value: controller.checkbox1.value, padding: getPadding(left: 30, top: 15, right: 30), variant: CheckboxVariant.OutlineBluegray104, onChange: (value) {controller.checkbox1.value = value;})), Obx(() => CustomCheckbox(text: "lbl_low_360p".tr, iconSize: 24, value: controller.checkbox2.value, padding: getPadding(left: 30, top: 15, right: 30), variant: CheckboxVariant.OutlineBluegray104, onChange: (value) {controller.checkbox2.value = value;})), CustomButton(width: 221, text: "lbl_download".tr, margin: getMargin(left: 30, top: 36, right: 30, bottom: 20), onTap: onTapDownload, alignment: Alignment.center)])); } 
onTapDownload() { Get.toNamed(AppRoutes.downloadingScreen); } 
 }