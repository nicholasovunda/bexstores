import 'package:bex_store/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final String usersName;
  const HomeScreen({
    required this.usersName,
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 65.w,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xfff1f1f1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 0.4,
                  color: const Color(0xff818181),
                )),
            child: IconButton(
              // svg logo for the app
              icon: Image.asset(".//"),
              onPressed: () {},
            ),
          ),
        ),
        titleTextStyle: GoogleFonts.cabin(color: Colors.black, fontSize: 16.sp),
        centerTitle: true,
        title: Text(
          'Welcome ${widget.usersName}',
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Center(
            // TODO write the logic for the search
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  border: Border.all(
                    color: borderColor,
                    width: 0.2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.search,
                        color: borderColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Looking for something',
                        style: GoogleFonts.dmSans(
                          fontSize: 14.sp,
                          color: borderColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
