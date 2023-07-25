import 'package:flutter/material.dart';
import 'package:flutter_my_project/dummyData/dummyModal/modelClass.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetialScreen extends StatelessWidget {
  static const routeName = '/detail_Screen';

  const DetialScreen();

  @override
  Widget build(BuildContext context) {
    final String movieId =
        ModalRoute.of(context)!.settings.arguments.toString();
    final selectedmovie = movielist.firstWhere(
      (move) => move.id == movieId,
    );
    return Material(
      child: SlidingUpPanel(
        color: const Color(0xFF044D60),
        maxHeight: 300,
        minHeight: 50,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        backdropEnabled: true,
        panel: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                selectedmovie.name,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    selectedmovie.rating.toString(),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                selectedmovie.description,
                overflow: TextOverflow.fade,
                softWrap: true,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
        body: Scaffold(
          body: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF044D60),
              title: Text(selectedmovie.name),
            ),
            body: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  selectedmovie.Imageurl,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
