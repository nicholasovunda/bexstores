import 'dart:developer';

import 'package:bex_store/constants/constants.dart';
import 'package:bex_store/presentation/screens/cart_page.dart';
import 'package:bex_store/presentation/screens/favourtie_page.dart';
import 'package:bex_store/presentation/screens/home_page.dart';
import 'package:bex_store/presentation/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            hoverColor: const Color(0xfff1f1f1),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color(0xff1B8281),
              secondary: const Color(0xff75B443),
            ),
            textTheme: TextTheme(
                headline1: GoogleFonts.cabin(),
                headline2: GoogleFonts.cabin(),
                headline3: GoogleFonts.dmSans(),
                headline4: GoogleFonts.dmSans())),
        home: const MyHomePage(title: "Nick"),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(
      usersName: "Nick",
    ),
    const FavouriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: bottomNavbar(context),
    );
  }

  bottomNavbar(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: const BoxDecoration(
        color: f1Color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                  log("pressed");
                },
                child: Column(children: [
                  SizedBox(
                    child: pageIndex == 0
                        ? SvgPicture.asset("assets/svgs/home.svg")
                        : SvgPicture.asset("assets/svgs/Home_filled.svg"),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

// String image, String newImage

}
