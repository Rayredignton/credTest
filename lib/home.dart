import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/gen/assets.gen.dart';
import 'package:test/widgets/colors.dart';
import 'package:test/widgets/custom_appbar.dart';
import 'package:test/widgets/spacing.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController searchCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: CustomAppBar(),
      ),
      body: ListView(
        children: [
          YMargin(18),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: searchCtrl,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Assets.icons.search.svg(),
                      ),
                      filled: true,
                      fillColor: CredpalColors.searchColor,
                      hintText: 'Search for products or stores',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "Avenir",
                        color: CredpalColors.textcolor2,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: const EdgeInsets.all(12.0),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                XMargin(20),
                Container(
                    height: 45.w,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: CredpalColors.searchColor,
                      borderRadius: BorderRadius.circular(10.0), //
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Assets.icons.scan.svg(),
                    ))
              ],
            ),
          ),
          const YMargin(24),
          Container(
            decoration: const BoxDecoration(
                color: CredpalColors.appBarColor,
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(products.length, (index) {
                        final options = products[index];
                        final logos = logo[index];
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 12, right: 12.w, top: 10),
                          child: Card(
                            elevation: 2.0, // Set your desired elevation
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  18.0), // Set your desired border radius
                            ),
                            child: Container(
                              height: 194.h,
                              width: 161.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xfffefefe),
                                      width: 2)),
                              child: Padding(
                                padding: EdgeInsets.all(10.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        options,
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(18.w),
                                            child: logos,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Nokia G20',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "Avenir",
                                        color: CredpalColors.textolor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const YMargin(8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₦ 39,780',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: "Avenir",
                                            color: CredpalColors.primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '₦ 88,000',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12.sp,
                                            fontFamily: "Avenir",
                                            color: CredpalColors.textcolor2,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                YMargin(14),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(products.length, (index) {
                        final options = products[index];
                        final logos = logo[index];
                        return Padding(
                          padding: EdgeInsets.only(left: 12, right: 12.w),
                          child: Card(
                            elevation: 2.0, // Set your desired elevation
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  18.0), // Set your desired border radius
                            ),
                            child: Container(
                              height: 194.h,
                              width: 161.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xfffefefe),
                                      width: 2)),
                              child: Padding(
                                padding: EdgeInsets.all(10.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        options,
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(18.w),
                                            child: logos,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Nokia G20',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "Avenir",
                                        color: CredpalColors.textolor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const YMargin(8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₦ 39,780',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: "Avenir",
                                            color: CredpalColors.primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '₦ 88,000',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12.sp,
                                            fontFamily: "Avenir",
                                            color: CredpalColors.textcolor2,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                                   YMargin(10),
                    ],
                  ),
     
                ),
              ],
            ),
          ),
          YMargin(33),
          merchants(),
        ],
      ),
    );
  }

  Widget merchants() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Merchants',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "Avenir",
                  color: CredpalColors.textolor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: "Avenir",
                  color: CredpalColors.primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          YMargin(37),
          Wrap(
      spacing: 18.0, // Set the spacing between items
      runSpacing: 18.0, // Set the run spacing (spacing between lines)
      children: pics.map((item) {
               
        return Column(
          children: [
            Image.asset(item.image,width: 60.w,height: 60.w,),
            YMargin(10),
             Text(
               item.title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: "Avenir",
                  color: CredpalColors.textolor,
                  fontWeight: FontWeight.w400,
                ),
              ),

          ],
        );
      }).toList(),
    ),
        ],
      ),
    );
  }

  List products = [
    Assets.images.product.image(width: 112.w, height: 102.h),
    Assets.images.product2.image(width: 112.w, height: 102.h),
    Assets.images.product3.image(width: 112.w, height: 102.h),
    Assets.images.product4.image(width: 112.w, height: 102.h),
  ];

  List logo = [
    Assets.icons.logo.svg(),
    Assets.icons.logo2.svg(),
    Assets.icons.logo3.svg(),
    Assets.icons.logo.svg(),
  ];

  List<Icons> pics = [
    Icons(image: Assets.images.pic1.path, title:   "Justrite"),
     Icons(image:  Assets.images.pic2.path, title:    "Orile Restaurant"),
      Icons(image: Assets.images.pic3.path, title:    "Slot"),
       Icons(image: Assets.images.pic4.path, title:   "Pointek"),
        Icons(image: Assets.images.pic5.path, title:   "ogabassey "),
         Icons(image: Assets.images.pic6.path, title:    "Casper Stores"),
          Icons(image: Assets.images.pic7.path, title:   
    "Dreamworks "),
           Icons(image: Assets.images.pic8.path, title:     "Hubmart "),

  ];
   List pic = [
  

    
     
    
   
  
  ];


 
}

class Icons {
  final String image;

  final String title;

  Icons({required this.image, required this.title});

}
