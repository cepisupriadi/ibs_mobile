import 'package:flutter/material.dart';
import '../style/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo_jmo.jpeg",
              height: 200,
              width: 250,
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Silahkan Login untuk masuk aplikasi",
                    style: TextStyle(
                      color: CustomColors.txtInput,
                    ),
                  ),
                ],
              ),
            ),
            buildTextInput('Email Anda', false),
            buildTextInput('Kata Sandi', true),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Lupa Akun?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CustomColors.txtForget,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Lupa Kata Sandi?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CustomColors.txtForget,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.06,
              margin: const EdgeInsets.only(top: 15, bottom: 40),
              decoration: BoxDecoration(
                color: CustomColors.btnLgDisabled,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                  child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CustomColors.txtBtnLogin,
                  fontSize: 16,
                ),
              )),
            ),
            const Text(
              "Buat Akun",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: CustomColors.txtGreen,
              ),
            ),
            SizedBox(
              height: height * 0.25,
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextInput(String hText, bool txtPwd) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: CustomColors.colBorder,
        ),
      ),
      child: txtPwd
          ? TextField(
              decoration: InputDecoration(
                hintText: hText,
                border: InputBorder.none,
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: CustomColors.txtGreen,
                  size: 23,
                ),
              ),
            )
          : TextField(
              decoration: InputDecoration(
                hintText: hText,
                border: InputBorder.none,
              ),
            ),
    );
  }
}
