import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../services/storage_service.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supportedLocales = context.supportedLocales;

    return Scaffold(
      appBar: AppBar(
        title: Text(tr('select_language')),
      ),
      body: ListView.builder(
        itemCount: supportedLocales.length,
        itemBuilder: (context, index) {
          final locale = supportedLocales[index];
          return ListTile(
            title: Text(locale.languageCode.toUpperCase()),
            onTap: () {
              context.setLocale(locale);
              StorageService.isFirstLaunch = false;
              Get.offNamed(Routes.loginScreen);
            },
          );
        },
      ),
    );
  }
}
