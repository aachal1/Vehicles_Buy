import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:login_signup/Common/dummy_data/category_model.dart';
import 'package:login_signup/Common/routes.dart';

// ignore: must_be_immutable
class TabbarContentWidget extends StatelessWidget {
  List<CategoryModel> list;
  TabbarContentWidget(this.list);
  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        padding: EdgeInsets.symmetric(horizontal: 8),
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        physics: BouncingScrollPhysics(),
        // physics: ClampingScrollPhysics(),

        staggeredTileBuilder: ((index) => StaggeredTile.fit(1)),
        itemCount: list.length,
        crossAxisCount: 2,
        itemBuilder: (context, index) =>
            GestureDetector(child: buildImageCard(index)),
      );

  Widget buildImageCard(index) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.getDetailRoute(), arguments: [
          list[index].name,
          list[index].price,
          list[index].image,
          list[index].description
        ]);
      },
      child: Card(
        color: Color.fromARGB(255, 49, 49, 49),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(5),
                child: Image.asset(list[index].image)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                list[index].name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
