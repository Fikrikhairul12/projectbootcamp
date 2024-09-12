import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_menu_controller.dart';

class ListMenuView extends GetView<ListMenuController> {
  const ListMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListMenuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ListMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
