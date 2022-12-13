import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/Common/constants.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kprimary,
          title: Center(child: Text('Favourites')),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Card(
                  margin: EdgeInsets.only(top: 15),
                  color: Color.fromARGB(255, 51, 51, 51),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                        'assets/images/cars/c1.webp')),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.delete_rounded,
                              size: 20,
                              color: Colors.red,
                            )
                          ],
                        )),
                  ),
                ),
              );
            })));
  }
}
