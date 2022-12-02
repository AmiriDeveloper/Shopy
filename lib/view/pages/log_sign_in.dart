import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopy/mobile_scaffold.dart';

class LogSignIn extends StatefulWidget {
  LogSignIn({super.key});

  @override
  State<LogSignIn> createState() => _LogSignInState();
}

class _LogSignInState extends State<LogSignIn> {
  final formKey = GlobalKey<FormState>();

// use this controller to get what the user type
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _numController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    //await FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber)
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('images/stay-home.png', scale: 3),
            const Spacer(),
            const Text(
              "Wellcome to Shopy ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 50),
            //////////////////////////////////
            // first text Field its for email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.deepPurple)),
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                suffixIcon: IconButton(
                    onPressed: () {
                      _emailController.clear();
                    },
                    icon: const Icon(Icons.clear, color: Colors.deepPurple)),
              ),
            ),
            const SizedBox(height: 20),
            //////////////////////////////////////////
            // this text field for input the password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.deepPurple)),
                labelText: 'password',
                labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                suffixIcon: IconButton(
                    onPressed: () {
                      _passwordController.clear();
                    },
                    icon: const Icon(Icons.clear, color: Colors.deepPurple)),
              ),
            ),

            const SizedBox(height: 20),
            ///////////////////////////////////////////////////
            // this textField for number if User Havent a email
            Form(
              key: formKey,
              child: TextFormField(
                //   validator: Utils.validateMobileNumber,
                controller: _numController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.deepPurple)),
                  //  prefixIcon: const Icon(Icons.phone),
                  labelText: 'number',
                  labelStyle: const TextStyle(color: Colors.deepPurpleAccent),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _numController.clear();
                      },
                      icon: const Icon(Icons.clear, color: Colors.deepPurple)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////
            //Click ebale container to sign in
            GestureDetector(
              onTap: signIn,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple),
                child: const Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("if you have an acount ? ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: () {},
                    child: const Text("register",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return const MobileScaffold();
        } else {
          return LogSignIn();
        }
      }),
    );
  }
}
