import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/agents/agents_page.dart';
import 'themes/colors_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   //devDiariesWithVee on Instagram
  //devDiariesWithVee on Youtube
  //vaidehi2701 on Github

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Players',
      theme: ThemeData(
        fontFamily: GoogleFonts.capriola().fontFamily,
      ).copyWith(
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: ThemeColor.primaryDark)),
      home: const PlayerPage(),
    );
  }
}
