import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:login_signup/Common/dummy_data/category_model.dart';

class TabbarContentWidget extends StatelessWidget {
  List<CategoryModel> list;
  TabbarContentWidget(this.list);
  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        padding: EdgeInsets.symmetric(horizontal: 15),
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        physics: BouncingScrollPhysics(),
        // physics: ClampingScrollPhysics(),

        staggeredTileBuilder: ((index) => StaggeredTile.fit(1)),
        itemCount: list.length,
        crossAxisCount: 2,
        itemBuilder: (context, index) => buildImageCard(index),
      );

  Widget buildImageCard(index) {
    return Stack(
      children: [Container(child: Image.asset(list[index].image))],
    );
  }
}
