import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:Shoe_Mates/View/home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  var isValid = true;
  late Future<ByteData> _imageByteData;
  late Future<ByteData> __imageBgByteData;
  @override
  void initState() {
    // TODO: implement initState
    // _imageByteData = rootBundle.load('assets/images/BSS_LOGO.png');
    // __imageBgByteData = rootBundle.load('assets/images/login_bg_hd.png');
    super.initState();
  }

  Future<List<ByteData>> _loadAssets() async {
    List<Future<ByteData>> futures = [
      rootBundle.load('assets/logo/soloemate_logo.png'),
      rootBundle.load('assets/backgrounds/background.jpeg'),
    ];

    // Wait for both asset Futures to complete
    List<ByteData> results = await Future.wait(futures);

    // Return the results as a list
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ByteData>>(
        future: _loadAssets(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ByteData logo = snapshot.data![0];
            ByteData background = snapshot.data![1];
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.black,
              ),
              body: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: MemoryImage(background.buffer.asUint8List()),
                    fit: BoxFit.cover,
                    opacity: 1,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Center(
                          child: Container(
                            width: 350,
                            height: 200,
                            child: Image.memory(logo.buffer.asUint8List()),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 15, bottom: 0),
                              //padding: EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _usernameController,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(),
                                  labelText: 'UserName',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 15, bottom: 0),
                              //padding: EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                           const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: isValid
                                  ? null
                                  : const Text('UserName or Password Wrong !',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: ElevatedButton(
                                onPressed: () {
                                  loginUser();
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo,
                                  onPrimary: Colors.white,
                                  // elevation: 15,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(250, 42),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              child: Center(
                                  child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(' Not a Member ? ',
                                      style: TextStyle(color: Colors.white)),
                                  Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            // An error occurred while retrieving the data
            return Text('Error retrieving data: ${snapshot.error}');
          } else {
            // Data is still being retrieved
            return CircularProgressIndicator();
          }
        });
  }

  loginUser() {
    // if (_usernameController.value.text == 'admin' &&
    //     _passwordController.value.text == 'bs123456') {
    Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
    // Navigator.pushNamed(context, '/home');
    setState(() {
      isValid = true;
    });
    // } else {
    //   setState(() {
    //     isValid = false;
    //   });
    // }
  }
}
