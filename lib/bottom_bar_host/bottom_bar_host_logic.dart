import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomBarHostController extends GetxController {
  RxBool home = true.obs;
  RxBool reports = true.obs;
  RxBool account = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    home.value = true;
    reports.value = false;
    account.value = false;
  }

  void makeHome() {
    home.value = true;
    reports.value = false;
    account.value = false;

    update();
  }

  void makeReports() {
    home.value = false;
    reports.value = true;
    account.value = false;
    update();


  }

  void makeAccount() {
    home.value = false;
    reports.value = false;
    account.value = true;
    update();
  }
}
