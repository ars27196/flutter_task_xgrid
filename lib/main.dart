import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_hunt_flutter_xgird/model/binding/app_binding.dart';
import 'package:talent_hunt_flutter_xgird/model/controller/app_state_controller.dart';
import 'package:talent_hunt_flutter_xgird/view/screens/option_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // final Test test = Test();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black,
        primaryColor: Colors.red,
      ),
      initialBinding: AppBindings(),
      onInit: (){
        Get.put<AppStateController>(AppStateController());
      },
      routes: {
        '/': (context) => const OptionScreen(),
      },
    );
  }
}
