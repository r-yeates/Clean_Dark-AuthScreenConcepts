import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleText(),
                const SizedBox(height: 40),
                _formFields(),
                const SizedBox(height: 22),
                _signupButton(),
              ],
            ),
          ),
          _backButton(context)
        ]),
      ),
    );
  }
}

Widget _titleText() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
    child: RichText(
      text: TextSpan(
        text: 'Reset',
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 58),
        children: <TextSpan>[
          const TextSpan(text: '\nPassword'),
          TextSpan(text: '.', style: TextStyle(color: Colors.pink.shade300)),
        ],
      ),
    ),
  );
}

Widget _formFields() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
          "Enter the email associated with your account and we'll send an email with instructions to reset your password. ",
          style: TextStyle(fontSize: 18, color: Colors.grey[50])),
      const SizedBox(height: 16),
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
    ],
  );
}

Widget _signupButton() {
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
            child: const Text('Reset Password',
                style: TextStyle(color: Colors.white, fontSize: 16))),
      ),
    ),
  ]);
}

Widget _backButton(BuildContext context) {
  return Positioned(
    top: 10,
    left: 0,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child:
                  Icon(Icons.keyboard_arrow_left, color: Colors.grey.shade50),
            ),
            Text('Back',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade50))
          ],
        ),
      ),
    ),
  );
}
