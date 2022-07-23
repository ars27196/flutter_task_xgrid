
import 'package:get/get.dart';
import 'package:talent_hunt_flutter_xgird/model/controller/option_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => OptionController());

  }

}