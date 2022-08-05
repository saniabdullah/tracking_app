import 'package:flutter/material.dart';
import 'package:tracking_app/app_inpsection/main_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String? userNrp, userPass;
  final _formKey = GlobalKey<FormState>();
  final _nrpController = TextEditingController();
  final _passController = TextEditingController();

  bool _obscureText = true;
  final bool _isLoading = false;

  Future _signIn() {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => const MainScreen()));
  }

  void _showPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(secondaryBackground),
      appBar: AppBar(
        backgroundColor: const Color(secondaryBackground),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Center(
          child: _isLoading
              ? const CircularProgressIndicator()
              : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/logo-hasnur.png', width: 100),
                  const SizedBox(height: 15),
                  const Text(
                    'HASNUR GROUP',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    'Despatch Tracking System',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(textGreen),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.87,
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _nrpController,
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'emptyNrp';
                              //   } else if (value.length < 8) {
                              //     return 'checkNrpSubmit';
                              //   }
                              //   return null;
                              // },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'NRP',
                                  hintStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color(textPlaceholder))),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              controller: _passController,
                              obscureText: _obscureText,
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'emptyPassword';
                              //   }
                              //   return null;
                              // },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color(textPlaceholder)),
                                  suffixIcon: IconButton(
                                      onPressed: _showPassword,
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off))),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: _signIn,
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(primaryYellow),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'MASUK',
                                  style: TextStyle(
                                      color: Color(primaryBlack),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        )),
                  )
                ])),
    );
  }
}
