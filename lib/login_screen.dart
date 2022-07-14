import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Log in',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 36),
              Text(
                'Log in with one of the following options.',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                12.0) //                 <--- border radius here
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
                        borderRadius: const BorderRadius.all(Radius.circular(
                                12.0) //                 <--- border radius here
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
              ),
              const SizedBox(height: 36),
              Text('Email',
                  style: TextStyle(fontSize: 16, color: Colors.grey[50])),
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
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Colors.grey[900],
                  filled: true,
                  contentPadding: const EdgeInsets.all(19),
                ),
                style: TextStyle(color: Colors.grey[50], fontSize: 17),
              ),
              const SizedBox(height: 22),
              Text('Password',
                  style: TextStyle(fontSize: 16, color: Colors.grey[50])),
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
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Colors.grey[900],
                  filled: true,
                  contentPadding: const EdgeInsets.all(19),
                ),
                style: TextStyle(color: Colors.grey[50], fontSize: 17),
              ),
              const SizedBox(height: 24),
              Row(children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.purple,
                          Colors.pink,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Log in',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                  ),
                ),
              ]),
              const SizedBox(height: 16),
              Row(
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
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
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
