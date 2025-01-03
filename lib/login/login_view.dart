import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franchise_app/forgot_password/forgot_password_view.dart';

import '../bottom_bar_host/bottom_bar_host_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First Child: Column containing a Row of two images
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First Image Container
                  Container(
                    // color: Colors.black,
                    width: 120,
                    // Adjust the width as needed
                    height: 80,
                    // Adjust the height as needed
                    // margin: const EdgeInsets.symmetric(horizontal: 10), // Add margin between images
                    child: Stack(
                      // alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/bulletStyleIcon.png', fit: BoxFit.fill,
                          // Fit the image within the container
                          errorBuilder: (BuildContext context, Object error,
                              StackTrace? stackTrace) {
                            return const Icon(Icons
                                .error); // Show an error icon if the image fails to load
                          },
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/meshraqTitleImage.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  // Second Image Container
                  Container(
                    width: 150,
                    // Adjust the width as needed
                    height: 200,
                    // Adjust the height as needed
                    // margin: const EdgeInsets.symmetric(horizontal: 10), // Add margin between images
                    child: Image.asset(
                      'assets/images/topFrame.png',
                      fit: BoxFit.cover, // Fit the image within the container
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return const Icon(Icons
                            .error); // Show an error icon if the image fails to load
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 200,
                // Adjust the width as needed
                height: 200,
                // Adjust the height as needed
                // margin: const EdgeInsets.symmetric(horizontal: 10), // Add margin between images
                child: Image.asset(
                  'assets/images/bottomFrame.png',
                  fit: BoxFit.cover, // Fit the image within the container
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Icon(Icons
                        .error); // Show an error icon if the image fails to load
                  },
                ),
              ),
            ],
          ),

          // Second Child: Foreground Container (Centered)
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  // Prevents the column from stretching
                  children: [
                    Container(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Welcome Text
                            Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Alexandria',
                                fontWeight: FontWeight.w400,
                                fontSize: 34,
                                color: const Color(0xFF1F5077),
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Description Text
                            Text(
                              'Enter your email & password\n'
                              'to continue',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Alexandria',
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: const Color(0xFF507799),
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Email TextField Container
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFF3F7FC),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Row(
                                children: [
                                  // Email Icon
                                  Image.asset(
                                    'assets/images/profile.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    height: 30,
                                    width: 5,
                                    color: Colors.grey[300],
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          color: const Color(0xFF507780),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Password TextField Container
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFF3F7FC),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Row(
                                children: [
                                  // Password Icon
                                  Image.asset(
                                    'assets/images/lock.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    height: 30,
                                    width: 5,
                                    color: Colors.grey[300],
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          color: const Color(0xFF507780),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Forgot Password Text
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordView()),
                                );
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: const Color(0xFF19B2E7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 40),

                            // Login Button
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomBarHostView()),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1F5077),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(1, 1),
                                      blurRadius: 2,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 15,
                  left: 40,
                  child:
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/ellipse.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/leftArrow.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
