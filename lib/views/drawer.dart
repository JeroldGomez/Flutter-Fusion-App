import 'package:flutter/material.dart';
import 'package:midterm_practical/route/route.dart';
import 'package:midterm_practical/views/nav.dart';
// import 'package:midterm_practical/views/user_info.dart';

class UserInfo {
  static String signedInEmail = '';

  static String getSignedInName() {
    if (signedInEmail.isNotEmpty) {
      return signedInEmail.split('@')[0];
    }
    return '';
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);
  // String? dynamicText;

  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
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
                          'Confirm Logout',
                          style: TextStyle(
                            color: Colors.white, // Set title text color
                            fontSize: 20,
                            fontFamily: 'PoppinsBold',
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/logout.png', // Replace with your icon asset path
                          width: 20, // Set width of the icon
                          height: 20,
                        ),
                      ],
                    ),
                    // SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Are you sure you want to log out?',
                          style: TextStyle(
                              color: Colors.white, // Set content text color
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 30.0), // Adjust padding as needed
                            child: Text(
                              'Close',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff1B263B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust border radius
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, loginPageRoute);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 30.0), // Adjust padding as needed
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff1B263B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust border radius
                            ),
                          ),
                        ),
                      ],
                    ),
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
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        color: Color.fromRGBO(28, 34, 47, 0.9),
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              child: DrawerHeader(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/student.gif',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${UserInfo.getSignedInName()}',
                      style: TextStyle(
                          color: Color(0xffd7d7d7),
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 3),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 3, top: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Color(0xff9c9c9c),
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        '${UserInfo.signedInEmail}',
                        style: TextStyle(
                          color: Color(0xff9c9c9c),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 27, right: 27, bottom: 10, top: 25),
              child: Divider(color: Color(0xff9c9c9c).withOpacity(0.3)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/details.png',
                  height: 22,
                  width: 22,
                ),
                title: Text('Details',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffd7d7d7),
                    )),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Image.asset(
                    'assets/images/raGO.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, detailsPageRoute);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/home.png',
                  height: 22,
                  width: 22,
                ),
                title: Text('Home',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffd7d7d7),
                    )),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Image.asset(
                    'assets/images/raGO.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 15),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/logout.png',
                  height: 22,
                  width: 22,
                ),
                title: Text('Log Out',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffd7d7d7),
                    )),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Image.asset(
                    'assets/images/raGO.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                onTap: () {
                  _showLogoutConfirmationDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
