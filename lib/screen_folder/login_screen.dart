import 'package:flutter/material.dart';
import 'package:shopping/screen_folder/sign_up_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: <Widget>[
          // Hình nền
          Image.asset(
            'assets/login_img.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            height: 500,
            left: 0.0, // Khoảng cách từ biểu mẫu đến góc trái
            right: 0.0, // Khoảng cách từ biểu mẫu đến góc phải
            bottom: 0.0, // Khoảng cách từ biểu mẫu đến đáy
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color:
                    Colors.white.withOpacity(1.0), // Màu nền với độ trong suốt
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0), // Bo góc trái
                  topRight: Radius.circular(20.0), // Bo góc phải
                ), // Bo tròn các góc
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                height: 400,
                child: Column(
                  children: [
                    const Text(
                      "Đăng nhập",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 33, 83, 36)),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 0, 8.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "example@gmail.com",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 151, 148, 148)),
                            prefixIcon: const Icon(Icons.email_outlined),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            filled: true,
                            fillColor: Colors.grey[100], // Màu nền
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 10, 0, 8.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Mật khẩu",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "*************",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 151, 148, 148)),
                            prefixIcon: const Icon(Icons.password),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            filled: true,
                            fillColor: Colors.grey[100], // Màu nền
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 45),
                        backgroundColor: const Color.fromARGB(255, 33, 83, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Bo tròn góc
                        ),
                      ),
                      child: const Text(
                        "Đăng nhập",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Quên mật khẩu ?",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Bạn chưa có tài khoản ?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: const Text("Đăng kí ngay",
                              style: TextStyle(color: Colors.blueAccent)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
