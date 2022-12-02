import 'package:flutter/cupertino.dart';

class DashBoardController extends ChangeNotifier {
  bool isDashboard = false;
  bool isAnalytics = false;
  bool isCustomers = false;
  bool isProducts = false;

  onTapDashBoard() {
    isDashboard = !isDashboard;
    isAnalytics = false;
    isProducts = false;
    isCustomers = false;
  }

  onTapAnalytics() {
    isDashboard = false;
    isAnalytics = !isAnalytics;
    isProducts = false;
    isCustomers = false;
  }

  onTapCustomers() {
    isDashboard = false;
    isAnalytics = false;
    isProducts = false;
    isCustomers = !isCustomers;
  }

  onTapProducts() {
    isDashboard = false;
    isAnalytics = false;
    isCustomers = false;
    isProducts = !isProducts;
  }

  clearSelection() {}
}
