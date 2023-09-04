
import 'package:aquameter/routes.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/intialbindings.dart';
import 'core/localisation/changelocal.dart';
import 'core/localisation/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  // Ensure that the app is initialized
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     locale: controller.language,
    
       initialBinding:InitialBindings() ,
      // routes: routes,
      getPages: routes,
      
    );
  }
}
