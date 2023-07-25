import 'package:flutter/material.dart';
import 'package:flutter_my_project/dummyData/dummyModal/modelClass.dart';
import 'package:flutter_my_project/screens/detailScreen.dart';
import 'package:flutter_my_project/widget/imagesliderWidget.dart';
import '../widget/ListWidget.dart';

class DashBoard extends StatelessWidget {
  static const routeName = '/dasdbord';

  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Color(0xFF044D60),
            title: Text("Panda Moives App"),
            floating: true,
          ),
          const SliverToBoxAdapter(
            child: ImageSlider(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(9),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: const [
                  Text(
                    'Top Rated',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 230, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movielist.length,
                itemBuilder: (ctx, index) {
                  return MyListWidget(
                    id: movielist[index].id,
                    imageurl: movielist[index].Imageurl,
                    name: movielist[index].name,
                    rating: movielist[index].rating,
                    dec: movielist[index].description,
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(9),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: const [
                  Text(
                    'Top Fun Movies',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
            ),
            itemCount: movielist.length,
            itemBuilder: (context, index) {
              return MyListWidget(
                id: movielist[index].id,
                imageurl: movielist[index].Imageurl,
                name: movielist[index].name,
                rating: movielist[index].rating,
                dec: movielist[index].description,
              );
            },
          ),
        ],
      ),
    );
  }
}
