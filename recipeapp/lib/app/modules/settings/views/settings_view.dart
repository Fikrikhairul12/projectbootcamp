import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Flavorite/app/modules/settings/widget/setting_widget.dart';
import 'package:Flavorite/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.workSans(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SettingItem(
                    imagePath: 'assets/icons/icon-person.png',
                    title: 'Profile settings',
                    subtitle: 'Settings regarding your profile',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SettingItem(
                    imagePath: 'assets/icons/icon-news.png',
                    title: 'News settings',
                    subtitle: 'Choose your favourite topics',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SettingItem(
                    imagePath: 'assets/icons/icon-notif.png',
                    title: 'Notifications',
                    subtitle: 'When would you like to be notified',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SettingItem(
                    imagePath: 'assets/icons/icon-sub.png',
                    title: 'Subscriptions',
                    subtitle: 'Currently, you are in Starter Plan',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Other',
                    style: GoogleFonts.workSans(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff141E28)
                    ),
                  ),
                  SizedBox(height: 10),
                  SettingItem(
                    imagePath: 'assets/icons/icon-bug.png',
                    title: 'Bug report',
                    subtitle: 'Report bugs very easy',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SettingItem(
                    imagePath: 'assets/icons/icon-share.png',
                    title: 'Share the app',
                    subtitle: 'Share on social media networks',
                    onTap: () {
                      // Tambahkan aksi ketika item ditekan
                    },
                  ),
                  SettingItem(
                    imagePath: 'assets/icons/icon-logout.png',
                    title: 'LogOut',
                    subtitle: 'Log Out & Stay Safe',
                    onTap: () {
                      Get.offAllNamed(Routes.GETSTARTED);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
