import '/core/app_export.dart';import 'package:templatetest/presentation/downloaded_screen/models/downloaded_model.dart';import 'package:templatetest/widgets/custom_bottom_bar.dart';class DownloadedController extends GetxController {Rx<DownloadedModel> downloadedModelObj = DownloadedModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
