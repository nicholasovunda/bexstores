import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(vertical: 10.w),
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffEEEEEE),
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    // TODO write the code for favourite ontap
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                // remove const and pass down images from the api
                child: const Image(
                  image: AssetImage(""),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              // TODO pass down values for the price from api and remove const
              const Text(
                // Name of products
                "",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.h,
              ),
              // TODO pass down values for the price from api and remove const
              const Text(
                // old price of items
                "",
                maxLines: 20,
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Color(0xffBBBBBB),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 10.sp),
              ),
            ]),
      );
}
