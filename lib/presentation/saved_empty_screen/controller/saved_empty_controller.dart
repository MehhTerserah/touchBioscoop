import '/core/app_export.dart';
import 'package:templatetest/presentation/saved_empty_screen/models/saved_empty_model.dart';
import 'package:templatetest/widgets/custom_bottom_bar.dart';

class SavedEmptyController extends GetxController {
  Rx<SavedEmptyModel> savedEmptyModelObj = SavedEmptyModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
