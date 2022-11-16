import '/core/app_export.dart';import 'package:templatetest/presentation/home_recently_watched_screen/models/home_recently_watched_model.dart';import 'package:templatetest/widgets/custom_bottom_bar.dart';class HomeRecentlyWatchedController extends GetxController {Rx<HomeRecentlyWatchedModel> homeRecentlyWatchedModelObj = HomeRecentlyWatchedModel().obs;

Rx<int> silderIndex = 0.obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
