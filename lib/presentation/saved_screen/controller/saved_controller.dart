import '/core/app_export.dart';import 'package:templatetest/presentation/saved_screen/models/saved_model.dart';import 'package:templatetest/widgets/custom_bottom_bar.dart';class SavedController extends GetxController {Rx<SavedModel> savedModelObj = SavedModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
