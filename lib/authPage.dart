import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161616),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/clown.png", width: 128, height: 128),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  cursorColor: const Color(0xff39B7B6),
                  style: const TextStyle(color: Color(0xff39B7B6)),
                  decoration: InputDecoration(
                    label: const Text(
                      "Email",
                    ),
                    labelStyle: const TextStyle(color: Color(0xff39B7B6)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Color(0xff39B7B6))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Color(0xff39B7B6))),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xff144F66),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  cursorColor: const Color(0xff39B7B6),
                  style: const TextStyle(color: Color(0xff39B7B6)),
                  decoration: InputDecoration(
                    label: const Text(
                      "Password",
                    ),
                    labelStyle: const TextStyle(color: Color(0xff39B7B6)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Color(0xff39B7B6))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Color(0xff39B7B6))),
                    prefixIcon: const Icon(
                      Icons.key,
                      color: Color(0xff144F66),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff66CBC4)),
                  ),
                  onPressed: () {
                    const AlertDialog(
                        title: Text(
                          "Выполнен переход",
                        ),
                        backgroundColor: Color(0xff39B7B6));
                    Navigator.pushNamed(context, '/homePage');
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Color(0xff161616),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                child: const Text(
                  "Sign Up?",
                  style: TextStyle(
                      color: Color(0xffBFBFBF),
                      decoration: TextDecoration.underline),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/registrationPage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
