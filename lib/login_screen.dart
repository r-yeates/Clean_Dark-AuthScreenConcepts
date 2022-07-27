import 'package:dark_login_signup_ui/resetpass_screen.dart';
import 'package:dark_login_signup_ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleText(),
              const SizedBox(height: 40),
              _formFields(context),
              const SizedBox(height: 16),
              _signinButton(),
              _divider(),
              _socialLogins(),
              const SizedBox(height: 16),
              _signupButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _titleText() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
    child: RichText(
      text: TextSpan(
        text: 'Sign in',
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 58),
        children: <TextSpan>[
          TextSpan(text: '.', style: TextStyle(color: Colors.pink.shade300)),
        ],
      ),
    ),
  );
}

Widget _formFields(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Email', style: TextStyle(fontSize: 16, color: Colors.grey[50])),
      const SizedBox(height: 8),
      TextFormField(
        showCursor: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: 'jeff@amazon.com',
          hintStyle: TextStyle(color: Colors.grey.shade600),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.grey.shade800,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink.shade300, width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
          fillColor: Colors.grey[900],
          filled: true,
          contentPadding: const EdgeInsets.all(19),
        ),
        style: TextStyle(color: Colors.grey[50], fontSize: 17),
      ),
      const SizedBox(height: 22),
      Text('Password', style: TextStyle(fontSize: 16, color: Colors.grey[50])),
      const SizedBox(height: 8),
      TextFormField(
        showCursor: false,
        obscureText: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: 'Enter your password',
          hintStyle: TextStyle(color: Colors.grey.shade600),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.grey.shade800,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink.shade300, width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
          fillColor: Colors.grey[900],
          filled: true,
          contentPadding: const EdgeInsets.all(19),
        ),
        style: TextStyle(color: Colors.grey[50], fontSize: 17),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen()),
            );
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade300,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _signinButton() {
  return Row(children: [
    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0.0, 1.0],
            colors: [
              Colors.purple,
              Colors.pink.shade300,
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: const Text('Sign in',
                style: TextStyle(color: Colors.white, fontSize: 16))),
      ),
    ),
  ]);
}

_divider() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      children: <Widget>[
        const SizedBox(width: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey.shade500,
            ),
          ),
        ),
        Text(
          'or',
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 15,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey.shade500,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    ),
  );
}

_socialLogins() {
  return Row(
    children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border.all(color: Colors.grey.shade800),
            borderRadius: const BorderRadius.all(
                Radius.circular(12.0) //                 <--- border radius here
                ),
          ),
          child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.g_mobiledata,
                size: 40,
                color: Colors.white,
              )),
        ),
      ),
      const SizedBox(width: 16),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border.all(color: Colors.grey.shade800),
            borderRadius: const BorderRadius.all(
                Radius.circular(12.0) //                 <--- border radius here
                ),
          ),
          child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.apple,
                size: 30,
                color: Colors.white,
              )),
        ),
      ),
    ],
  );
}

Widget _signupButton(BuildContext context) {
  return InkWell(
    onTap: (() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    }),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Dont have an account?',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade500,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          'Sign up',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
