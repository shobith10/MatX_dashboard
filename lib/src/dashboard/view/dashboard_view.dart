import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:dashboard_application/src/components/styles/text_styles.dart';
import 'package:dashboard_application/src/components/widgets/drawer_card.dart';
import 'package:dashboard_application/src/components/widgets/sized.dart';
import 'package:dashboard_application/src/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardView extends StatefulWidget {
  static const routeName = '/dashboard';
  const DashBoardView({Key? key}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<DashBoardController>();
    return Scaffold(
      drawer: Drawer(
        backgroundColor: primaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      //need to add icon
                      Text(
                        'Matx',
                        style: style25whitebold,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.onTapDashBoard();
                    });
                  },
                  child: DrawerCard(
                      iconData: Icons.dashboard,
                      title: 'Dashboard',
                      isClick: controller.isDashboard),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.onTapAnalytics();
                    });
                  },
                  child: DrawerCard(
                    isClick: controller.isAnalytics,
                    iconData: Icons.analytics,
                    title: 'Analytics',
                  ),
                ),
                sizedBoxh20,
                Text(
                  'PAGES',
                  style: style15greyLite.copyWith(color: whiteColor),
                ),
                sizedBoxh15,
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.onTapCustomers();
                    });
                  },
                  child: DrawerCard(
                    isClick: controller.isCustomers,
                    iconData: Icons.people,
                    title: 'Customers',
                    isArrow: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.onTapProducts();
                    });
                  },
                  child: DrawerCard(
                    isClick: controller.isProducts,
                    iconData: Icons.shopping_cart,
                    title: 'Products',
                    isArrow: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
