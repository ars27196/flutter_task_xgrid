import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:talent_hunt_flutter_xgird/utils/app_colors.dart';
import 'package:talent_hunt_flutter_xgird/utils/app_styles.dart';
import 'package:talent_hunt_flutter_xgird/utils/widgets/row_container.dart';

class OptionScreen extends GetView {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(

          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    icon: Icon(Icons.wb_sunny, color: Get.theme.primaryColor),
                    onPressed: () {
                      print(Get.isDarkMode);
                      Get.changeThemeMode(
                          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                    },
                  ),
                )],
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: AppColors.backgroundOrange),
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(5),
                  child: circularAvatarContainer(),
                ),
              ),
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Jhon Doe",
                      style: AppStyles.titleTextSize,
                    )),
              ),
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Jhon.Doe@example.com",
                      style: AppStyles.emailTextSize,
                    )),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: 260,
                child: RowContainer(
                    title: "Upgrade To Pro",
                    background: AppColors.backgroundOrange,
                    showLeadingIcon: false),
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: const [
                    RowContainer(icon: FontAwesomeIcons.shield, title: "Privacy"),
                    RowContainer(icon: FontAwesomeIcons.shield, title: "Privacy"),
                    RowContainer(icon: FontAwesomeIcons.shield, title: "Privacy"),
                    RowContainer(icon: FontAwesomeIcons.shield, title: "Privacy"),
                    RowContainer(
                        title: "Logout",
                        background: AppColors.black,
                        textColor: AppColors.white,
                        showLeadingIcon: false),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget circularAvatarContainer() {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: AppColors.black,
      child: const Icon(
        Icons.person,
        size: 100,
        color: AppColors.backgroundOrange,
      ),
      padding: const EdgeInsets.all(20.0),
      shape: const CircleBorder(),
    );
  }
}
