import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key});

  final TextStyle _textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // Background Image
            Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              height: 540,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1.0),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  height: 500,
                  margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Column(
                    children: [
                      const Text(
                        "Đăng ký",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 33, 83, 36),
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildTextField("Họ và tên", Icons.account_box),
                      _buildTextField("Email", Icons.email_outlined),
                      _buildTextField("Mật khẩu", Icons.password, obscureText: true),
                      const SizedBox(height: 15),
                      _buildElevatedButton("Đăng ký"),
                      const SizedBox(height: 15),
                      _buildDivider("Hoặc"),
                      const SizedBox(height: 10),
                      _buildSocialIcons(),
                      _buildLoginLink(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, IconData prefixIcon, {bool obscureText = false}) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 0, 8.0),
          alignment: Alignment.topLeft,
          child: Text(
            hintText,
            style: _textStyle,
          ),
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText == "Mật khẩu" ? "*************" : hintText,
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 151, 148, 148),
            ),
            prefixIcon: Icon(prefixIcon),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            filled: true,
            fillColor: Colors.grey[100],
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildElevatedButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 45),
        backgroundColor: const Color.fromARGB(255, 33, 83, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildDivider(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.blueGrey],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1, 1),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          width: 100,
          height: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'WorkSansMedium',
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey, Colors.blueGrey],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1, 1),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          width: 100,
          height: 0.5,
        ),
      ],
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon('assets/icon_google.png'),
        const SizedBox(width: 20),
        _buildSocialIcon('assets/icon_fb.png'),
        const SizedBox(width: 20),
        _buildSocialIcon('assets/icon_apple.png'),
      ],
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Image.asset(
      assetPath,
      width: 40,
      height: 40,
    );
  }

  Widget _buildLoginLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Bạn đã có tài khoản ?"),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Login()),
            );
          },
          child: const Text("Đăng nhập"),
        ),
      ],
    );
  }
}
