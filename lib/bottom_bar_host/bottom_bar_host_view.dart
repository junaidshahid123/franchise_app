import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'bottom_bar_host_logic.dart';

class BottomBarHostView extends StatelessWidget {
  const BottomBarHostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarHostController>(
        init: BottomBarHostController(),
        builder: (logic) {
          return Scaffold(
            backgroundColor: const Color(0xFF1F5077),
            // Set the background color
            body: SafeArea(
              child: Column(
                children: [
                  // Header Section
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Row(
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
                                color: Colors.white,
                                errorBuilder: (BuildContext context,
                                    Object error, StackTrace? stackTrace) {
                                  return const Icon(Icons.error);
                                },
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/images/meshraqTitleBlueImage.png',
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        // Second Image Container
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 50,
                          height: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/images/whiteEllipse.png',
                                fit: BoxFit.cover,
                                errorBuilder: (BuildContext context,
                                    Object error, StackTrace? stackTrace) {
                                  return const Icon(Icons.error);
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                  'assets/images/bell.png',
                                  fit: BoxFit.cover,
                                  errorBuilder: (BuildContext context,
                                      Object error, StackTrace? stackTrace) {
                                    return const Icon(Icons.error);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: const [
                        Text(
                          'Hi, Grgir person',
                          style: TextStyle(
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Stack containing the two containers
                  Expanded(
                    child: Stack(
                      children: [
                        // First and Second Containers in Column
                        Positioned.fill(
                          child: Column(
                            children: [
                              // First Container
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        // Title and "Show All" Row
                                        Container(
                                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Branches',
                                                style: TextStyle(
                                                  fontFamily: 'Alexandria',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: const Color(0xFF1F5077),
                                                ),
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Show all',
                                                    style: TextStyle(
                                                      fontFamily: 'Alexandria',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                      color: const Color(0xFF1F5077),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    'assets/images/rightOption.png',
                                                    height: 15,
                                                    width: 15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        // First ListView.builder (Branch List)
                                        Container(
                                          child: SizedBox(
                                            height: 270,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  margin: const EdgeInsets.all(10),
                                                  height: 150,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30),
                                                    color: Colors.grey[200],
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        height: 200,
                                                        child: ClipRRect(
                                                          borderRadius: BorderRadius.circular(30),
                                                          child: Stack(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/dummyFood.png',
                                                                fit: BoxFit.cover,
                                                                width: double.infinity,
                                                              ),
                                                              Image.asset(
                                                                'assets/images/meshraqTitleImage.png',
                                                                fit: BoxFit.cover,
                                                                width: double.infinity,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Row for name and small image
                                                      Container(
                                                        margin: EdgeInsets.all(10),
                                                        child: SizedBox(
                                                          height: 30,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Al-Ulaya, Riyadh',
                                                                style: const TextStyle(
                                                                  fontSize: 16,
                                                                  fontFamily: 'Alexandria',
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Color(0xFF1F5077),
                                                                ),
                                                              ),
                                                              Image.asset('assets/images/indication.png'),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        // Indicator Row Below the ListView.builder
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: List.generate(
                                            5,
                                                (indicatorIndex) => Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5),
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: indicatorIndex == 0
                                                    ? Colors.blue
                                                    : Colors.grey, // Active indicator is blue
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),

                                        // Title and "Show All" Row
                                        Container(
                                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Previous Reports',
                                                style: TextStyle(
                                                  fontFamily: 'Alexandria',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: const Color(0xFF1F5077),
                                                ),
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Show all',
                                                    style: TextStyle(
                                                      fontFamily: 'Alexandria',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                      color: const Color(0xFF1F5077),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    'assets/images/rightOption.png',
                                                    height: 15,
                                                    width: 15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second ListView.builder (same as your existing code)
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: SizedBox(
                                            height: 300,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  margin: const EdgeInsets.all(10),
                                                  width: MediaQuery.of(context).size.width * 0.6,
                                                  // Adjust width to prevent overflow
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30),
                                                    color: Colors.grey[200],
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      // Increase the space for the image
                                                      SizedBox(
                                                        height: 200,
                                                        // Increased height for the image
                                                        child: ClipRRect(
                                                          borderRadius: BorderRadius.circular(30),
                                                          child: Stack(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/dummyFood.png',
                                                                fit: BoxFit.cover,
                                                                width: double.infinity,
                                                              ),
                                                              Image.asset(
                                                                'assets/images/meshraqTitleImage.png',
                                                                fit: BoxFit.cover,
                                                                width: double.infinity,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Row for name and small image with reduced margin
                                                      Container(
                                                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                                        // Reduced margins
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'Sultana, Medinah',
                                                              style: const TextStyle(
                                                                fontSize: 16,
                                                                fontFamily: 'Alexandria',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xFF1F5077),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Wed, 12/05/2021',
                                                              style: const TextStyle(
                                                                fontSize: 14,
                                                                // Slightly smaller font size for date
                                                                fontFamily: 'Alexandria',
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xFF1F507799),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              // Second Container
                              Container(
                                height: 60,
                                // Fixed height for the second container
                                decoration: BoxDecoration(
                                    // color: Colors.grey[200],
                                    ),
                                child: Center(
                                  child: Text(
                                    'Second Container Content',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Third Container with half in first and half in second
                        Positioned(
                          bottom: 30,
                          left: 20,
                          // Horizontal margin (adjust as needed)
                          right: 20,
                          // Horizontal margin (adjust as needed)
                          // top: MediaQuery.of(context).size.height * 0.25 - 50, // Adjust for first container's height
                          child: Container(
                            height: 70,
                            // Fixed height for the third container
                            decoration: BoxDecoration(
                              color: const Color(0xFFD1E6FB),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      logic.makeHome();
                                    },
                                    child: Container(
                                      child: logic.home.value == true
                                          ? Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/highlightingPolygon.png'),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Image.asset(
                                                        'assets/images/home.png')),
                                              ],
                                            )
                                          : Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Image.asset(
                                                  'assets/images/home.png')),
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      logic.makeReports();
                                    },
                                    child: Container(
                                      child: logic.reports.value == true
                                          ? Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/highlightingPolygon.png'),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Image.asset(
                                                        'assets/images/reports.png')),
                                              ],
                                            )
                                          : Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Image.asset(
                                                  'assets/images/reports.png')),
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      logic.makeAccount();
                                    },
                                    child: Container(
                                      child: logic.account.value == true
                                          ? Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/highlightingPolygon.png'),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Image.asset(
                                                        'assets/images/profile.png')),
                                              ],
                                            )
                                          : Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Image.asset(
                                                  'assets/images/profile.png')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class BranchesListView extends StatefulWidget {
  @override
  _BranchesListViewState createState() => _BranchesListViewState();
}

class _BranchesListViewState extends State<BranchesListView> {
  // Controller to track the current scroll position
  PageController _pageController = PageController();
  int _currentIndex = 0; // Variable to track the current item index

  @override
  void initState() {
    super.initState();
    // Listen to changes in the page view (scrolling)
    _pageController.addListener(() {
      // Calculate the current index based on the page controller position
      setState(() {
        _currentIndex = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose(); // Don't forget to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    'Branches',
                    style: TextStyle(
                      fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: const Color(0xFF1F5077),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'Show all',
                        style: TextStyle(
                          fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF1F5077),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/images/rightOption.png',
                        height: 15,
                        width: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
            // First ListView.builder with PageController
            Container(
              child: SizedBox(
                height: 270,
                child: PageView.builder(
                  controller: _pageController, // Set the page controller here
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/dummyFood.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Image.asset(
                                    'assets/images/meshraqTitleImage.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Row for name and small image
                          Container(
                            margin: EdgeInsets.all(10),
                            child: SizedBox(
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Al-Ulaya, Riyadh',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1F5077),
                                    ),
                                  ),
                                  Image.asset('assets/images/indication.png'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            // Indicator Row Below the ListView.builder
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5, // Number of indicators (same as itemCount)
                (indicatorIndex) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indicatorIndex == _currentIndex
                        ? Colors.blue
                        : Colors.grey, // Active indicator is blue
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Second ListView.builder (same as your existing code)
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[300],
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'assets/images/dummyFood.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/meshraqTitleBlueImage.png',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
