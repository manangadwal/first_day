import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController _textcontroler = new TextEditingController();
  // final TextEditingController _textcontroler2 = new TextEditingController();
  // var value = "";
  bool cb = false; //cb= change border of button

  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        cb = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        cb = false;
        // _textcontroler.clear();
        // _textcontroler2.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "images/4.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Admin Portal",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                labelText: "Username",
                                hintText: " Enter username",
                                hintStyle: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w100)),

                            validator: (value) {
                              if (value != "ADMIN") {
                                return "wrong username or password";
                              }

                              return null;
                            },
                            // controller: _textcontroler,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                hintText: " Enter password",
                                hintStyle: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w100)),
                            validator: (value) {
                              if (value != "12345678") {
                                return "wrong username or password";
                              }

                              return null;
                            },
                            // controller: _textcontroler2,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(cb ? 50 : 5),
                            color: Colors.deepPurple,
                            child: InkWell(
                              // splashColor: Colors.amber,
                              enableFeedback: true,
                              onTap: () => movetohome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: cb ? 60 : 50,
                                width: cb ? 60 : 120,
                                child: Center(
                                  child: cb
                                      ? Icon(Icons.done, color: Colors.white)
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "images/5.png",
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
