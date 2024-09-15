import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:Flavorite/app/routes/app_pages.dart';

class BottombarController extends GetxController {
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
