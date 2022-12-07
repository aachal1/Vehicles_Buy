import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:login_signup/Common/constants.dart';
import 'package:login_signup/Common/dummy_data/dummydata.dart';
import 'package:login_signup/Features/HomeScreen/Widgets/open_drawer_widget.dart';
import 'package:login_signup/Features/HomeScreen/Widgets/tabbar_content_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: OpenDrawerWidget(),
        appBar: AppBar(
          leading: Builder(
              //drawer can be opened only from appbar
              builder: (context) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: IconButton(
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: Icon(
                            Icons.sort_rounded,
                          )),
                      decoration: ShapeDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 43, 43, 43),
                                Color.fromARGB(255, 0, 0, 0)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          shape: SmoothRectangleBorder(
                              borderRadius: SmoothBorderRadius.all(SmoothRadius(
                                  cornerRadius: 10, cornerSmoothing: 1)))),
                    ),
                  )),
          backgroundColor: kprimary,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              height: screenHeight * 0.18,
              child: Stack(
                children: [
                  Container(
                    height: screenHeight * 0.12,
                    decoration: ShapeDecoration(
                        color: kprimary,
                        shape: SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius.only(
                                bottomLeft: SmoothRadius(
                                    cornerRadius: 40, cornerSmoothing: 1)))),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        'Find your best choice !',
                        style: TextStyle(fontSize: 22, letterSpacing: 1.5),
                      )),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 30,
                      child: Container(
                        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                        child: Row(children: [
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  color: Color.fromARGB(255, 26, 26, 26)),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 131, 131, 131))),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 68, 68, 68),
                            size: 25,
                          )
                        ]),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              // BoxShadow(
                              //     color: Color.fromARGB(255, 255, 196, 175),
                              //     offset: Offset(0, 2),
                              //     blurRadius: 10,
                              //     spreadRadius: 2),
                            ]),
                      ))
                ],
              ),
            ),
            TabBar(
                labelColor: Color.fromARGB(255, 255, 255, 255),
                unselectedLabelColor: Color.fromARGB(255, 104, 104, 104),
                indicator: DotIndicator(
                    color: Color.fromARGB(255, 255, 50, 50), radius: 4),
                isScrollable: true,
                tabs: [
                  Tab(text: 'Cars'),
                  Tab(text: 'Motorbikes'),
                  Tab(text: 'Buses'),
                  Tab(text: 'Tankers'),
                  Tab(text: 'Bicycles'),
                  Tab(text: 'Ships'),
                ]),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Expanded(
              child: TabBarView(children: [
                TabbarContentWidget(DummyData.carList),
                TabbarContentWidget(DummyData.motorbikeList),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 53, 56, 53)),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 76, 175, 152)),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 127, 76, 175)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends Decoration {
  const DotIndicator({
    this.color = Colors.white,
    this.radius = 4.0,
  });
  final Color color;
  final double radius;
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(
      color: color,
      radius: radius,
      onChange: onChanged,
    );
  }
}

class _DotPainter extends BoxPainter {
  _DotPainter({
    required this.color,
    required this.radius,
    VoidCallback? onChange,
  })  : _paint = Paint()
          ..color = color
          ..style = PaintingStyle.fill,
        super(onChange);
  final Paint _paint;
  final Color color;
  final double radius;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;
    canvas.drawCircle(
      Offset(rect.bottomCenter.dx, rect.bottomCenter.dy - radius),
      radius,
      _paint,
    );
  }
}
