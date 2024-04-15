import 'package:flutter/material.dart';
import 'package:testproject/widgets/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 193, 227, 174),
              Color.fromARGB(255, 88, 163, 67),
            ],
          ),
        ),
        child: const Column(
          children: [
            UserProfile(),
            SizedBox(height: 20.0),
            ContentSection(
              title: 'Content',
              text_1: 'My courses',
              iconData_1: FontAwesomeIcons.graduationCap,
              text_2: 'Download',
              iconData_2: FontAwesomeIcons.download,
              text_3: 'Bookmarks',
              iconData_3: FontAwesomeIcons.bookBookmark,
              text_4: 'Interests',
              iconData_4: FontAwesomeIcons.solidHeart,
            ),
            SizedBox(height: 20.0),
            ContentSection(
              title: 'Preference',
              text_1: 'Edit Profile',
              iconData_1: FontAwesomeIcons.user,
              text_2: 'Feedback',
              iconData_2: Icons.feedback_outlined,
              text_3: 'Settings',
              iconData_3: Icons.settings,
              text_4: 'Logout',
              iconData_4: Icons.logout,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.book_rounded),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 280,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 169, 230, 171),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HEMISSI AHMED ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '@your_id',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('Followers'),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('Following'),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('Post'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomActionButton(
                      text: 'Your Activity    >',
                      textColor: const Color(0xFF4CAF50),
                      buttonColor: const Color.fromRGBO(239, 246, 239, 1),
                      borderColor: Colors.transparent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  final String title;
  final String text_1;
  final String text_2;
  final String text_3;
  final String text_4;
  final dynamic iconData_1;
  final dynamic iconData_2;
  final dynamic iconData_3;
  final dynamic iconData_4;

  const ContentSection({
    super.key,
    required this.title,
    required this.text_1,
    required this.text_2,
    required this.text_3,
    required this.text_4,
    required this.iconData_1,
    required this.iconData_2,
    required this.iconData_3,
    required this.iconData_4,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 8,
                              height: 30,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: Color.fromARGB(255, 31, 134, 34),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                              height: 50,
                            ),
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SubContentSection(
                              sub_text_1: text_1,
                              iconData:
                                  iconData_1, /* FontAwesomeIcons.graduationCap*/
                            ),
                            SubContentSection(
                              sub_text_1: text_2,
                              iconData: iconData_2,
                            ),
                            SubContentSection(
                              sub_text_1: text_3,
                              iconData: iconData_3,
                            ),
                            SubContentSection(
                              sub_text_1: text_4,
                              iconData: iconData_4,
                            ),
                          ],
                        ),
                      ),

                      // More content...
                    ],
                  ),
                ),

                // More content...
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SubContentSection extends StatelessWidget {
  final IconData iconData;

  final String sub_text_1;

  const SubContentSection({
    super.key,
    required this.iconData,
    required this.sub_text_1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 380,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Icon(iconData),
          const SizedBox(width: 20),
          Text(
            sub_text_1,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          const Icon(FontAwesomeIcons.chevronRight),
        ],
      ),
    );
  }
}
