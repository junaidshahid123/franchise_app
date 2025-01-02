import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franchise_app/login/login_view.dart';
import 'package:franchise_app/signup/signup_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              // Margin from left and right
              decoration: BoxDecoration(
                color: Colors.white,
                // Background color of the container
                borderRadius: BorderRadius.circular(20),
                // Apply a border radius of 20
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Subtle shadow
                    blurRadius: 10,
                    offset: const Offset(0, 4), // Shadow offset
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
                      'Welcome',
                      style: TextStyle(
                        fontFamily: 'Alexandria', // Ensure font is defined
                        fontWeight: FontWeight.w600,
                        fontSize: 34,
                        color: const Color(0xFF1F5077),
                      ),
                    ),
                    const SizedBox(height: 20), // Space between elements
                    // Description Text
                    Text(
                      'When using this application \n'
                      'you must follow the work carefully,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w400,
                        fontSize: 21,
                        color: const Color(0xFF507799),
                      ),
                    ),
                    const SizedBox(height: 20), // Space between elements
                    // Ready Text
                    Text(
                      'Ready!',
                      style: TextStyle(
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color(0xFF507799),
                      ),
                    ),
                    const SizedBox(height: 30), // Space between elements
                    // Buttons Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Sign Up Container
                        InkWell(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => SignupView()),
                           );
                         },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30), // Adjust padding
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF19B2E7), Color(0xFF1A9ED0)],
                                // Gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(25),
                              // Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFFFFFF),
                                  // Semi-transparent black (adjust the opacity as needed)
                                  offset: Offset(1, 1),
                                  // X and Y offset (1px each)
                                  blurRadius: 2,
                                  // Blur radius (2px)
                                  spreadRadius: 0, // Spread radius (0px)
                                ),
                              ],
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.w500, // Font weight of 500
                                fontSize: 22, // Font size of 22px
                                color:
                                    Colors.white, // Text color white for contrast
                              ),
                            ),
                          ),
                        ),

                        // Login Container
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginView()),
                            );

                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30), // Adjust padding
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF1F5077), Color(0xFF3A95DD)],
                                // Gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(25),
                              // Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFFFFFF),
                                  // Semi-transparent black (adjust the opacity as needed)
                                  offset: Offset(1, 1),
                                  // X and Y offset (1px each)
                                  blurRadius: 2,
                                  // Blur radius (2px)
                                  spreadRadius: 0, // Spread radius (0px)
                                ),
                              ],
                            ),

                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w500, // Font weight of 500
                                fontSize: 22, // Font size of 22px
                                color:
                                    Colors.white, // Text color white for contrast
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
