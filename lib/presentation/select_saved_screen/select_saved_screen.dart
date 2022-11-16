import '../select_saved_screen/widgets/select_saved_item_widget.dart';
import 'controller/select_saved_controller.dart';
import 'models/select_saved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:templatetest/core/app_export.dart';
import 'package:templatetest/widgets/app_bar/appbar_subtitle.dart';
import 'package:templatetest/widgets/app_bar/appbar_title.dart';
import 'package:templatetest/widgets/app_bar/custom_app_bar.dart';
import 'package:templatetest/widgets/custom_bottom_bar.dart';

class SelectSavedScreen extends GetWidget<SelectSavedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Row(
            children: [
              AppbarSubtitle(
                text: "lbl_mark_all".tr,
                margin: getMargin(
                  top: 7,
                ),
              ),
              AppbarTitle(
                text: "lbl_saved".tr,
                margin: getMargin(
                  left: 88,
                  bottom: 1,
                ),
              ),
            ],
          ),
          actions: [
            AppbarSubtitle(
              text: "lbl_delete".tr,
              margin: getMargin(
                top: 7,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              margin: getMargin(
                left: 10,
                top: 38,
              ),
              decoration: AppDecoration.fillBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(
                      () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.selectSavedModelObj.value
                            .selectSavedItemList.length,
                        itemBuilder: (context, index) {
                          SelectSavedItemModel model = controller
                              .selectSavedModelObj
                              .value
                              .selectSavedItemList[index];
                          return SelectSavedItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Downloads:
        return getDefaultWidget();
      case BottomBarEnum.Me:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
