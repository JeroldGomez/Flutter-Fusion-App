import 'package:flutter/material.dart';
import 'package:midterm_practical/route/route.dart' as route;
import 'package:midterm_practical/views/drawer.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  ScrollController _scrollController = ScrollController();

  Future<void> _showAllDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Set the border radius here
          ),
          backgroundColor:
              Color(0xff0D1B2A).withOpacity(0.9), // Set dialog background color
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '💻 Featured Programs: ',
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 20,
                            fontFamily: 'PoppinsBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1. Color Game',
                              style: TextStyle(
                                  color: Colors.white, // Set content text color
                                  fontSize: 15,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '2. Xylophone',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3. Heart List',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '4. 3D Profile',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '5. Card Profile',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '6. Calculator',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '7. To-Do List',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '8. Snake Game',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                        Text(
                          '9. Tetris',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        Text(
                          '10. Pixel Puzzle',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1, // Width of the divider
                          color: Color(0xff9c9c9c)
                              .withOpacity(0.3), // Color of the divider
                        ),
                        SizedBox(height: 5),
                      ],
                    ),

                    // SizedBox(height: 30),
                  ],
                ),
              ),
              // SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xff0D1B2A),
          ),
          Container(
              child: ListView(
            controller: _scrollController,
            children: [
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff1B263B),
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(20.0), // Bottom-left corner radius
                      bottomRight:
                          Radius.circular(20.0), // Bottom-right corner radius
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'assets/images/applogo.png',
                            width: 39,
                            height: 39,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Fusion',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'PoppinsSemiBold',
                              color: Color(0xffffffff),
                              // fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                        // SizedBox(width: 155),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState!.openEndDrawer();
                          },
                          child: Image.asset(
                            'assets/images/appW.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      'Midterm Programs',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'PoppinsSemiBold',
                        color: Color(0xffffffff),
                        // fontWeight: FontWeight.w900
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 5),
                      child: GestureDetector(
                        onTap: () {
                          _showAllDialog(context);
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Color(0xff757575),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 0),
                      child: Image.asset(
                        'assets/images/dua.png',
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.gamePageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 5),
                                child: Image.asset(
                                  'assets/images/casino1.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Color Game',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Text(
                                      'Midterm Practical',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(
                              context, route.xylophonePageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 5),
                                child: Image.asset(
                                  'assets/images/xyl.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Xylophone',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 11, top: 0),
                                    child: Text(
                                      'Midterm Activity 2',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(color: Color(0xff9c9c9c).withOpacity(0.3)),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          children: [
                            Text(
                              'Prelim Programs',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'PoppinsSemiBold',
                                color: Color(0xffffffff),
                                // fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.prelimP2PageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 5),
                                child: Image.asset(
                                  'assets/images/lkN.gif',
                                  width: 59,
                                  height: 59,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, bottom: 0, top: 11),
                                    child: Text(
                                      'Heart List',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 0),
                                    child: Text(
                                      'Prelim Practical Program 2',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.prelimP1PageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/3dN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      '3D Profile',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Prelim Practical Program 1',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.prelimA2PageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/proN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Card Profile',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Prelim Activity 2',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(color: Color(0xff9c9c9c).withOpacity(0.3)),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          children: [
                            Text(
                              'Additional Programs',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'PoppinsSemiBold',
                                color: Color(0xffffffff),
                                // fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(
                              context, route.calculatorPageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/mathN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Calculator',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Additional Application 1',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.todolistPageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/listN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'To-Do List',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Additional Application 2',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(
                              context, route.snakegamePageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/snN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Snake Game',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Additional Application 3',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when Container is tapped
                          Navigator.pushNamed(context, route.tetrisPageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 0),
                                child: Image.asset(
                                  'assets/images/gcN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Tetris',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Additional Application 4',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => puzzlePageRoute()),
                          // );
                          Navigator.pushNamed(context, route.puzzlePageRoute);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            // Add background color
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bg_noise.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 5),
                                child: Image.asset(
                                  'assets/images/puzzleN.gif',
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 0, top: 11),
                                    child: Text(
                                      'Pixel Puzzle',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'PoppinsSemiBold',
                                          color: Color(0xff3b3b3b),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.5, top: 0),
                                    child: Text(
                                      'Additional Program 5',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff3b3b3b)),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10),
                                child: Image.asset(
                                  'assets/images/rightarrow.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: 300,
                            color: Color(0xff9c9c9c)
                                .withOpacity(0.3), // Color of the divider
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              _scrollController.animateTo(
                                0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Image.asset(
                              'assets/images/up_s.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                          // Spacer(),
                          // Container(
                          //   height: 1,
                          //   // width: 135,
                          //   width: 300,
                          //   color: Color(0xff9c9c9c)
                          //       .withOpacity(0.3), // Color of the divider
                          // ),
                        ],
                      ),
                      // Divider(color: Color(0xff9c9c9c).withOpacity(0.3)),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

//
