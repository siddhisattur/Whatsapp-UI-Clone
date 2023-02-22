import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/Chatspage.dart';
import 'package:whatsapp_ui/pages/Homepage.dart';
import 'package:whatsapp_ui/pages/Settingspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.teal,
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0),
          ),
        ),
        routes: {
          '/': (context) => HomePage(),
          'settingsPage': (context) => SettingsPage(),
          'chatsPage': (context) => ChatsPage(),
        });
  }
}
