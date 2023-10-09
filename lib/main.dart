import 'package:flutter/material.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';
import 'package:whatsapp_ui/utils/colors.dart';

void main(){
  runApp(WhatsAppChatApp());
}
class WhatsAppChatApp extends StatelessWidget {
  const WhatsAppChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp-Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
       colorScheme: customColorScheme
      ),
      home: ResponsiveLayouts(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}