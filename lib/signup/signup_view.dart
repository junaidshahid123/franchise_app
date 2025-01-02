import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franchise_app/otp/otp_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Layout: Images
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // First Image (Logo with overlay)
                  Container(
                    width: 120,
                    height: 80,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/bulletStyleIcon.png',
                          fit: BoxFit.fill,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error);
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
                  const Spacer(),
                  // Second Image
                  Container(
                    width: 150,
                    height: 200,
                    child: Image.asset(
                      'assets/images/topFrame.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // Bottom Frame Image
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/bottomFrame.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
            ],
          ),

          // Foreground: Signup Form
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 30),
                    // Signup Form Container
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpView()),
                        );
                      },
                      child: Container(
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Title
                              Text(
                                'Sign up',
                                style: TextStyle(
                                  fontFamily: 'Alexandria',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 34,
                                  color: const Color(0xFF1F5077),
                                ),
                              ),
                              const SizedBox(height: 20),
                              // Subtitle
                              Text(
                                'Enter your data to continue',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Alexandria',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: const Color(0xFF507799),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Input Fields
                              _buildInputField(
                                hintText: 'Full Name',
                                icon: 'assets/images/profile.png',
                              ),
                              _buildInputField(
                                hintText: 'Phone Number',
                                icon: 'assets/images/phone.png',
                              ),
                              _buildInputField(
                                hintText: 'Email',
                                icon: 'assets/images/mail.png',
                              ),
                              _buildInputField(
                                hintText: 'Password',
                                icon: 'assets/images/lock.png',
                                obscureText: true,
                              ),
                              _buildInputField(
                                hintText: 'Confirm Password',
                                icon: 'assets/images/lock.png',
                                obscureText: true,
                              ),

                              const SizedBox(height: 20),

                              // Signup Button
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF19B2E7),
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
                                  'Sign up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Back Button
                Positioned(
                  top: 15,
                  left: 40,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
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

  // Helper Widget for Input Fields
  Widget _buildInputField({
    required String hintText,
    required String icon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFF3F7FC),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            icon,
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
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
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
    );
  }
}
