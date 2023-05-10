// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:Shoe_Mates/Styles/font_styles.dart';
import '../Styles/color.dart';
import 'brands.dart';
import 'item_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    // _imageByteData = rootBundle.load('assets/images/BSS_LOGO.png');
    // __imageBgByteData = rootBundle.load('assets/images/login_bg_hd.png');
    super.initState();
  }

  int navigationIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      navigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            SizedBox(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Store location",
                          style: textStyle8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/location_ic.png",
                              width: 14,
                              height: 14.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text("Yangon, SanChaung", style: textStyle8),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                  ],
                )
                // Text("HOME"),
                ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: bgBlack,
        //  decoration:const BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage("assets/backgrounds/background.jpeg"),
        //             fit: BoxFit.cover,
        //             opacity: 1,
        //           ),
        //         ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 48.0,
                          child: TextFormField(
                            cursorColor: customPurple,
                            cursorWidth: 2.5,
                            style: textStyle1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              hintText: "Looking for shopping",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child:
                                    Image.asset("assets/icons/search_ic.png"),
                              ),
                              hintStyle: textStyle1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: Brands(),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Shows",
                            style: textStyle3,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: textStyle5,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return ItemView(
                                currentIndex: index,
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Arrivals",
                            style: textStyle3,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: textStyle5,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "BEST CHOISE",
                                              style: textStyle6,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Nike Air Jordan",
                                              style: textStyle4,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "\$ 849.69",
                                              style: textStyle4,
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                          child: Image.asset(
                                        "assets/shows/img1.png",
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: SizedBox(
          width: 56.0,
          height: 56.0,
          child: FloatingActionButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const CartScreen()),
              // );
            },
            backgroundColor: customPurple,
            elevation: 10,
            child: Image.asset(
              "assets/icons/home_ic.png",
              width: 20.0,
              height: 20.0,
              color: bgWhite,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bottomnav_bg.png"),
                fit: BoxFit.fitWidth)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    navigationIndex = 0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Image.asset("assets/icons/home_ic.png",
                      width: 25,
                      height: 25,
                      color: navigationIndex == 0 ? bgWhite : customGrey),
                ),
                InkWell(
                  onTap: () {
                    navigationIndex = 1;
                  },
                  child: Image.asset("assets/icons/favourite_ic.png",
                      width: 25,
                      height: 25,
                      color: navigationIndex == 1 ? bgWhite : customGrey),
                ),
                const SizedBox(
                  width: 60.0,
                ),
                InkWell(
                  onTap: () {
                    navigationIndex = 2;
                  },
                  child: Image.asset("assets/icons/notify_ic.png",
                      width: 25,
                      height: 25,
                      color: navigationIndex == 2 ? bgWhite : customGrey),
                ),
                InkWell(
                  onTap: () {
                    navigationIndex = 3;
                  },
                  child: Image.asset("assets/icons/user_ic.png",
                      width: 25,
                      height: 25,
                      color: navigationIndex == 3 ? bgWhite : customGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
