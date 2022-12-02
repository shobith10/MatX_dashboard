import 'package:dashboard_application/src/components/styles/cards.dart';
import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:dashboard_application/src/components/styles/text_styles.dart';
import 'package:dashboard_application/src/components/widgets/drawer_card.dart';
import 'package:dashboard_application/src/components/widgets/graph_card.dart';
import 'package:dashboard_application/src/components/widgets/sized.dart';
import 'package:dashboard_application/src/dashboard/dashboard_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
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
    var width = MediaQuery.of(context).size.width;
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
        iconTheme: IconThemeData(color: blackColor),

        backgroundColor: whiteColor,
        //foregroundColor: whiteColor,
        actions: [
          const Icon(
            Icons.search,
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.notifications,
          ),
          const Icon(Icons.shopping_cart),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: geryColor.withOpacity(0.2),
            child: Icon(
              Icons.person,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Sales Activity',
                  style: style15greyLite.copyWith(color: greyShade),
                  textAlign: TextAlign.start,
                ),
                sizedBoxh15,
                Wrap(
                  spacing: 5,
                  runSpacing: 10,
                  alignment:
                      width > 750 ? WrapAlignment.start : WrapAlignment.center,
                  children: [
                    Container(
                      width: width < 350 ? 320 : 350,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: borderRadius10,
                        boxShadow: [
                          BoxShadow(
                            color: greyShade,
                            blurRadius: 1,
                          )
                        ],
                        color: whiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: geryColor.withOpacity(0.2),
                            child: Icon(
                              Icons.card_giftcard_outlined,
                              color: greyShade,
                            ),
                          ),
                          sizedBoxh10,
                          Text(
                            '10,495',
                            style: style30white.copyWith(
                                color: blackColor, fontWeight: FontWeight.w600),
                          ),
                          sizedBoxh10,
                          Text(
                            'TO BE PACKED',
                            style: style20whiteNotbold.copyWith(
                                color: greyShade, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width < 350 ? 320 : 350,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: borderRadius10,
                        boxShadow: [
                          BoxShadow(
                            color: greyShade,
                            blurRadius: 1,
                          )
                        ],
                        color: whiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: geryColor.withOpacity(0.2),
                            child: Icon(
                              Icons.local_shipping,
                              color: greyShade,
                            ),
                          ),
                          sizedBoxh10,
                          Text(
                            '30,972',
                            style: style30white.copyWith(
                                color: blackColor, fontWeight: FontWeight.w600),
                          ),
                          sizedBoxh10,
                          Text(
                            'TO BE SHIPPED',
                            style: style20whiteNotbold.copyWith(
                                color: greyShade, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxh20,
                  ],
                ),
                sizedBoxh20,
                Text(
                  'Inventory Summary',
                  style: style15greyLite.copyWith(color: greyShade),
                ),
                sizedBoxh10,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: greyShade,
                        blurRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('QUANTITY IN HAND',
                          style: style20whiteNotbold.copyWith(
                              color: blackColor, fontSize: 16)),
                      Text(
                        '540',
                        style: style20whiteNotbold.copyWith(
                            color: blackColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: greyShade,
                              blurRadius: 1,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Sales order summary',
                                    style: style23white.copyWith(
                                        color: blackColor),
                                  )
                                ],
                              ),
                            ),
                            sizedBoxh15,
                          ],
                        ),
                      ),
                      const GraphData()
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 25),
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: 30,
                    child: Icon(
                      FluentIcons.settings_20_filled,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
