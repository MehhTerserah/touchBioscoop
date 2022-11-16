import '/core/app_export.dart';import 'package:templatetest/presentation/logo_screen/models/logo_model.dart';class LogoController extends GetxController {Rx<LogoModel> logoModelObj = LogoModel().obs;

@override void onReady() { super.onReady();Future.delayed(const Duration(milliseconds: 3000), (){
Get.toNamed(AppRoutes.splashScreen);}); } 
@override void onClose() { super.onClose(); } 
 }
