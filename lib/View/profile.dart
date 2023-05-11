import 'package:Shoe_Mates/Styles/color.dart';
import 'package:Shoe_Mates/View/favourite_screen.dart';
import 'package:Shoe_Mates/View/home_page.dart';
import 'package:Shoe_Mates/login.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _nameController = TextEditingController(text: 'KHANT TI KYI');
  final _phoneController = TextEditingController(text: '09-799334700');
  final _emailController =
      TextEditingController(text: 'khanttikyi.kk@gamil.com');
  final _passwordController = TextEditingController(text: '123123123');

  int navigationIndex = 3;
  setBottomBarIndex(index) {
    setState(() {
      navigationIndex = index;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backgrounds/background.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.6,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/icons/back_ic.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 5,
                    color: Colors.indigo,
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/logo/soloemate_logo.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          enabled: false,
                          controller: _nameController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              // label: Text('Full Name'),
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.person_outline_rounded,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          enabled: false,
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              // label: Text('EMAIL'),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          enabled: false,
                          controller: _phoneController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              // label: Text("Phone"),
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          enabled: false,
                          controller: _passwordController,
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            // label: Text("Password"),
                            prefixIcon: Icon(
                              Icons.fingerprint,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: const Text('LOG OUT'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 72,
          decoration: const BoxDecoration(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      navigationIndex = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavouriteScreen()),
                      );
                    },
                    child: Image.asset("assets/icons/favourite_ic.png",
                        width: 25,
                        height: 25,
                        color: navigationIndex == 1 ? bgWhite : customGrey),
                  ),
                  InkWell(
                    onTap: () {
                      navigationIndex = 2;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavouriteScreen()),
                      );
                    },
                    child: Image.asset("assets/icons/notify_ic.png",
                        width: 25,
                        height: 25,
                        color: navigationIndex == 2 ? bgWhite : customGrey),
                  ),
                  InkWell(
                    onTap: () {
                      navigationIndex = 3;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
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
      ),
    );
  }
}
