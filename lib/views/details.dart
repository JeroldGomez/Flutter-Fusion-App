import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class MyDetails extends StatefulWidget {
  const MyDetails({Key? key}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  ScrollController _scrollController = ScrollController();

  Future<void> _showMarkInfoDialog(BuildContext context) async {
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
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      'assets/images/dots.gif', // Replace with your background image path
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Color(0xff0D1B2A)],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        'assets/images/mark.jpg', // Replace with your background image path
                        fit: BoxFit.cover,
                        // width: double.infinity,
                        height: 100,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Workspace.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Role :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Mobile App Developer",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/contact.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Contact Information :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Name :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Mark Anthony Javelosa",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "Email :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "markanthony@gmail.com",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "GitHub :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "github.com/MarkJavelosa",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/skills.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Skills :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Offline Functionality",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Mobile Testing",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Performance Optimization",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       left: 16,
                        //       right: 16,
                        //       bottom: 3,
                        //       top: 3), // Adjust padding as needed
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(
                        //           5.0), // Set the border radius
                        //       color: Color(0xffffffff)),
                        //   child: Text(
                        //     "RESTful APIs",
                        //     style: TextStyle(
                        //       color: Color(0xff0D1B2A),
                        //       fontSize: 13,
                        //       fontFamily: 'PoppinsSemiBold',
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _showJobInfoDialog(BuildContext context) async {
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
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      'assets/images/dots.gif', // Replace with your background image path
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Color(0xff0D1B2A)],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        'assets/images/job.jpg', // Replace with your background image path
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Workspace.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Role :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Mobile App Developer",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/contact.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Contact Information :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Name :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Job Lenard Villanueva",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "Email :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "joblenard@gmail.com",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "GitHub :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "github.com/JobV",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/skills.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Skills :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Cross-Platform Development",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       left: 16,
                        //       right: 16,
                        //       bottom: 3,
                        //       top: 3), // Adjust padding as needed
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(
                        //           5.0), // Set the border radius
                        //       color: Color(0xffffffff)),
                        //   child: Text(
                        //     "Responsive UI",
                        //     style: TextStyle(
                        //       color: Color(0xff0D1B2A),
                        //       fontSize: 13,
                        //       fontFamily: 'PoppinsSemiBold',
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Version Control",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "App Deployment",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _showJeroldInfoDialog(BuildContext context) async {
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
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      'assets/images/dots.gif', // Replace with your background image path
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Color(0xff0D1B2A)],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        'assets/images/gomez_jerold_image1.jpg', // Replace with your background image path
                        fit: BoxFit.cover,
                        // width: double.infinity,
                        height: 100,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Workspace.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Role :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Project Manager",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/contact.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Contact Information :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Name :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Jerold Gomez",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "Email :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "jeroldgomez345@gmail.com",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "GitHub :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Spacer(),
                        Text(
                          "github.com/JeroldGomez",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 1, // Width of the divider
                      color: Color(0xff9c9c9c)
                          .withOpacity(0.3), // Color of the divider
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/skills.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Skills :",
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 16,
                            fontFamily: 'PoppinsSemiBold',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Prototyping (Figma)",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "Responsive UI",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 13,
                              right: 13,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "UI/UX Maestro",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 3,
                              top: 3), // Adjust padding as needed
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  5.0), // Set the border radius
                              color: Color(0xffffffff)),
                          child: Text(
                            "State Management",
                            style: TextStyle(
                              color: Color(0xff0D1B2A),
                              fontSize: 13,
                              fontFamily: 'PoppinsSemiBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
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
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to Fusion! 👋🏻',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This app showcases the culmination of our hard \nwork and creativity throughout this semester. \nExplore the diverse range of programs we\'ve \ndeveloped, each representing our dedication to \nlearning and innovation.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      // Add more ListTiles or other widgets here
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color(0xff11B263B),
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(25.0), // Bottom-right corner radius
                        bottomRight:
                            Radius.circular(25.0), // Bottom-right corner radius
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            '💻 Featured Programs: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '1. Color Game',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A simple betting game. Users select colors to bet, roll the dice, and view outcomes. The interface displays chosen colors, available capital, and allows interactive betting actions.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '2. Xylophone',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A xylophone player. It utilizes the \'audioplayers\' package to produce distinct musical notes upon button press, assigning unique colors to represent each xylophone key.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '3. Heart List',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'It utilizes the english_words package to create and manage pairs of English words. The app allows users to save their favorite names by tapping on a heart icon next to each suggestion, displaying the saved suggestions in a separate page when the list icon in the app bar is pressed.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '4. 3D Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Creates a basic 3D profile UI in Flutter. It consists of a Scaffold containing an AppBar with a customized title and a body section structured with nested Containers to create a 3D layered effect. ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '5. Card Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The body consists of a centered Container representing a card, displaying a person\'s name, educational background, and contact details in a structured layout. ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '6. Calculator',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A simple calculator app with a UI containing two text containers for input and output, a customized keypad layout, and arithmetic operation buttons.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '7. To-Do List',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A To-Do List app with a StatefulWidget containing a list of todos, an addTodo method to add tasks via a dialog prompt, and a deleteTodo method to remove tasks by swiping.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '8. Snake Game',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A game interface with a snake that moves across a grid, collecting food and growing longer. The game logic handles the snake\'s movement direction based on user gestures',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '9. Tetris',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'A Tetris game application. It initializes the user interface, including the game screen, controls, and UI elements',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '10. Pixel Puzzle',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'It is a simple slide puzzle game, where the player has to arrange the squares into sorted order',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          // SizedBox(height: 15),
                          // Container(
                          //   height: 1,
                          //   width: 100, // Width of the divider
                          //   color: Color(0xff9c9c9c)
                          //       .withOpacity(0.3), // Color of the divider
                          // ),
                          SizedBox(height: 20),
                          Text(
                            'Feel free to navigate through each program and experience the hard work and dedication we\'ve put into these projects. Thank you for exploring our app!',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 1, // Width of the divider
                            color: Color(0xff9c9c9c)
                                .withOpacity(0.3), // Color of the divider
                          ),
                          SizedBox(height: 30),
                          Text(
                            '🔗 Resources: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Icons:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PoppinsBold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'https://www.flaticon.com/',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/flaticon.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Images:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PoppinsBold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'https://www.freepik.com/',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/freepik.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Fonts:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PoppinsBold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                ' https://fonts.google.com/',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/googlefont.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Colors:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PoppinsBold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'https://coolors.co/',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/coolors.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    )),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '👨🏻‍💻 Developers: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Our app wouldn\'t have been possible without the collaborative efforts of our dedicated team. Meet the individuals who contributed to this project:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Jerold Gomez',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Mark Anthony Javelosa',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Job Lenard Villanueva',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Select the image to access additional details',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/arrow_down.png',
                              fit: BoxFit.cover,
                              width: 12,
                              height: 12,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _showJeroldInfoDialog(context);
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(
                                    'assets/images/gomez_jerold_image1.jpg',
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ), // Replace 'your_image.png' with your image path
                            ),
                            GestureDetector(
                              onTap: () {
                                _showMarkInfoDialog(context);
                              },
                              child: Container(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(7),
                                    child: Image.asset(
                                      'assets/images/mark.jpg',
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ), // Replace 'your_image.png' with your image path
                            ),
                            GestureDetector(
                              onTap: () {
                                _showJobInfoDialog(context);
                              },
                              child: Container(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(7),
                                    child: Image.asset(
                                      'assets/images/job.jpg',
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ), // Replace 'your_image.png' with your image path
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(
                          'We acknowledge and appreciate the dedication, hard work, and expertise of each team member in bringing this app to life.',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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

                            Container(
                              height: 1,
                              width: 250, // Width of the divider
                              color: Color(0xff9c9c9c)
                                  .withOpacity(0.3), // Color of the divider
                            ),
                            // Spacer(),
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
                          ],
                        ),
                        SizedBox(height: 50),
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
