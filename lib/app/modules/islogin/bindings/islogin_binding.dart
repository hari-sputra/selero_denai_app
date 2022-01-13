import 'package:get/get.dart';

import '../controllers/islogin_controller.dart';

class IsloginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsloginController>(
      () => IsloginController(),
    );
  }
}
