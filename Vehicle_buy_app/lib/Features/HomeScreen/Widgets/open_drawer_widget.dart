import 'package:flutter/material.dart';
import 'package:login_signup/Common/constants.dart';

class OpenDrawerWidget extends StatelessWidget {
  const OpenDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Container(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      'Aachal Sah',
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text(
                      'kumariaachal568@gmail.com',
                    ),
                    currentAccountPicture: InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                            child: ClipOval(
                          child: Image.asset(
                            "assets/images/mountain.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ))),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          kprimary,
                          Color.fromARGB(233, 83, 1, 1),
                        ])),
                  ),
                ),
                Positioned(
                    top: 70,
                    right: 20,
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          'assets/images/close.png',
                          height: 16,
                          width: 16,
                          color: Colors.white,
                        )))
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        Icons.favorite,
                        color: IconTheme.of(context).color,
                      ),
                      title: Text(
                        'Favourite',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        Icons.people,
                        color: IconTheme.of(context).color,
                      ),
                      title: Text(
                        'Friends',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        Icons.share,
                        color: IconTheme.of(context).color,
                        size: 20,
                      ),
                      title: Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        Icons.star,
                        color: IconTheme.of(context).color,
                        size: 20,
                      ),
                      title: Text(
                        'Rate',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        Icons.settings,
                        color: IconTheme.of(context).color,
                        size: 20,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    ListTile(
                      minLeadingWidth: 16,
                      leading: Icon(
                        color: IconTheme.of(context).color,
                        Icons.logout,
                        size: 20,
                      ),
                      title: Text(
                        'Exit',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
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
