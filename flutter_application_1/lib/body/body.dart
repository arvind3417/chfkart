import 'package:flutter/material.dart';
import 'package:flutter_application_1/body/foodlist.dart';

import '1.dart';
// import 'package:flutter_application_1/1.dart';

class body extends StatefulWidget {
  body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  // bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
        SingleChildScrollView(
      child: Container(
        
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            searchbar(size: size),
            onescrollable(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: recomended_text(text: "Popular Dishes"),
            ),
            twoscrollable(),
            threescrollable(),
            cards()
          ],
        ),
      ),
    );
  }
}

class threescrollable extends StatelessWidget {
  const threescrollable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
            recommended_catg(name: "Recommended"),
          ],
        ),
      ),
    );
  }
}

class twoscrollable extends StatelessWidget {
  const twoscrollable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
          SizedBox(
            width: 10,
          ),
          gesture_detector_catgrs(
            image:
                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580",
            route: MaterialPageRoute(builder: (context) => const pae()),
          ),
        ],
      ),
    );
  }
}

class onescrollable extends StatelessWidget {
  const onescrollable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height ,
      child: Stack(
        children: [
          Container(
            height: size.height/2,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          Positioned(
              left: 0,
              bottom: 5,
              right: 0,
              child: Container(
                height: 54,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color:
                              Color.fromARGB(255, 51, 49, 49).withOpacity(.4))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class recommended_catg extends StatelessWidget {
  const recommended_catg({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          width: 130,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class gesture_detector_catgrs extends StatelessWidget {
  gesture_detector_catgrs({Key? key, required this.image, required this.route})
      : super(key: key);
  final String image;
  Route route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, route);
      },
      // onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> pae()));},
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}

class recomended_text extends StatelessWidget {
  const recomended_text({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 7,
        )
      ],
    );
  }
}

class catg_widget extends StatelessWidget {
  const catg_widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
