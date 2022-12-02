import 'package:flutter/material.dart';

import '../styles/cards.dart';
import '../styles/colors.dart';
import '../styles/text_styles.dart';

class DrawerCard extends StatelessWidget {
  final String? title;
  final bool isClick;
  final IconData? iconData;
  final bool? isArrow;

  const DrawerCard(
      {Key? key,
      this.title,
      required this.isClick,
      this.iconData,
      this.isArrow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: borderRadius6,
          color: isClick ? greyShade.withOpacity(0.2) : Colors.transparent),
      child: Row(
        children: [
          Icon(
            iconData ?? Icons.dashboard,
            color: whiteColor,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title ?? '',
            style: style23whiteNotbold,
          ),
          const Spacer(),
          isArrow ?? false
              ? Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: whiteColor,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
