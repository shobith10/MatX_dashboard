import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:flutter/cupertino.dart';

BorderRadius borderRadius15 = BorderRadius.circular(15);
BorderRadius borderRadius0 = BorderRadius.circular(0);

BorderRadius borderRadius10 = BorderRadius.circular(10);
BorderRadius borderRadius6 = BorderRadius.circular(6);

borderCheckWeb(double width) {
  return width > 790 ? borderRadius0 : borderRadius15;
}

List<BoxShadow> basicBoxShadow = [
  BoxShadow(
    color: geryColor.withOpacity(0.1),
    blurRadius: 1.0,
  ),
];
