import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 15.0),
          child: Column(
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: [
                    CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: AssetImage("assets/maleprofpic.webp"),
                        radius: 18.0),
                    SizedBox(width: 10.0),
                    Text(
                      "Hi, Rajat!",
                      style: TextStyle(
                          fontFamily: "OpenSans", fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.dehaze, size: 25.0),
                ),
              ]),
              Row(children: [
                Expanded(
                    child: Card(
                  elevation: 0.0,
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  color: Color(0xfffeeed5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Text(
                          "What are you looking for?",
                          style: TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ))
                /*SafeArea(
                      child: SearchBar<Post>(
                        searchBarPadding: EdgeInsets.symmetric(horizontal: 20),
                        headerPadding: EdgeInsets.symmetric(horizontal: 10),
                        listPadding: EdgeInsets.symmetric(horizontal: 20),
                        onSearch: search,
                        onItemFound: (Post post, int index){
                          return ListTile(title: Text(post.title), subtitle: Text(post.description));
                        },
                      ),
                    )*/
              ]),
              Row(children: <Widget>[SectionTite("Explore")]),
              Row(children: <Widget>[
                Expanded(
                    child: MyCard(0xfffae4e6, "Attention &\nAwareness",
                        "assets/attention_and_awareness.png", 110, 110)),
                Expanded(
                    child: MyCard(0xfffeccb5, "Build &\nBreathe",
                        "assets/build_and_breathe.png", 110, 150)),
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: MyCard(0xfffeeed5, "Connect to\nClarity",
                        "assets/connect_for_clarity.png", 110, 150)),
                Expanded(
                    child: MyCard(0xffd3d7fe, "Discover &\nDream",
                        "assets/discover_and_dream.png", 110, 150)),
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: MyCard(0xfffae4e6, "Experiment\nof the day",
                        "assets/experiment_of_the_day.png", 110, 110)),
                Expanded(
                    child: MyCard(0xfffeccb5, "From the\nCreators",
                        "assets/from_the_creators.png", 110, 150)),
              ]),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              title: Text("Home"),
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_florist),
              title: Text("Home"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              title: Text("Home"),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.gps_fixed),
              title: Text("Home"),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.highlight),
              title: Text("Home"),
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text("Home"),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text("Home"),
              backgroundColor: Colors.orange),
        ],
      ),
    );
  }
}

class Post {
  String title;
  String description;

  Post(this.title, this.description);
}

Future<List<Post>> search(String s) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(s.length,
      (index) => Post("Title : $s $index", "Description : $s $index"));
}

Widget SectionTite(String title) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        fontFamily: "OpenSans",
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget MyCard(
    int color, String title, String imagePath, double height, double width) {
  return Card(
    //feeed5
    //d3d7fe
    //fae4e6
    //
    elevation: 0.0,
    color: Color(color),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    margin: EdgeInsets.all(5.0),
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: height,
              width: width,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
