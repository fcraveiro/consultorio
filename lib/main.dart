import 'package:consultorio/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'services/temas.dart';

void main() async {
  await GetStorage.init();
  //await findSystemLocale();
  //initializeDateFormatting().then((_) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF48426D),
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consultorio',
      theme: Temas.light,
      darkTheme: Temas.dark,
      themeMode: ThemeService().theme,
      initialRoute: '/',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), //
        Locale('pt', 'BR'), //
      ],
      locale: const Locale('pt', 'BR'),
      home: const Menu(),
    );
  }
}
