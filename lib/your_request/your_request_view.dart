import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franchise_app/reset_password/reset_password_view.dart';

class YourRequestView extends StatelessWidget {
  const YourRequestView({super.key});

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
                children: [
                  // First Image Container
                  Container(
                    width: 120,
                    height: 80,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/bulletStyleIcon.png',
                          fit: BoxFit.fill,
                          errorBuilder: (BuildContext context, Object error,
                              StackTrace? stackTrace) {
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
                  Spacer(),
                  // Second Image Container
                  Container(
                    width: 150,
                    height: 200,
                    child: Image.asset(
                      'assets/images/topFrame.png',
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/bottomFrame.png',
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
            ],
          ),

          // Second Child: Foreground Container (Centered)
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 400, // Set a specific height for the container
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Heading Text
                      Text(
                        'Your Request',
                        style: TextStyle(
                          fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w400,
                          fontSize: 34,
                          color: const Color(0xFF1F5077),
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Description Text
                      Text(
                        'Your registration application\n'
                            'is being reviewed\n'
                            'You will receive a message\n'
                            'once it has been completed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color(0xFF507799),
                        ),
                      ),

                      const SizedBox(height: 60),

                      // Back To Home Button
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetPasswordView()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                            'Back To Home',
                            style: TextStyle(
                              fontFamily: 'Alexandria',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
