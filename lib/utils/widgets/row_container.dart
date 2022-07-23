import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_colors.dart';
import '../app_styles.dart';

class RowContainer extends StatelessWidget {
  const RowContainer({
    Key? key,
    this.icon,
    required this.title,
    this.background = AppColors.grey,
    this.textColor = AppColors.black,
    this.showLeadingIcon = true,
  }) : super(key: key);
  final String title;
  final dynamic icon;
  final Color background;
  final Color textColor;
  final bool showLeadingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(42)),
      child: Row(
        children: [
          icon != null
              ? FaIcon(
                  icon,
                  color: AppColors.black,
                )
              : Container(),
          Expanded(
            child: _fetchTitle(),
          ),
          showLeadingIcon
              ? const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.black,
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _fetchTitle() {
    return showLeadingIcon
        ? Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: AppStyles.rowTitleTextSizeBlack(textColor),
            ))
        : Center(
            child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: AppStyles.rowTitleTextSizeBlack(textColor),
            ),
          ));
  }
}
