// // import 'dart:convert';

// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // class indexpage extends StatefulWidget {
// //   indexpage({Key? key}) : super(key: key);

// //   @override
// //   State<indexpage> createState() => _indexpageState();
// // }

// // class _indexpageState extends State<indexpage> {
// //   List users = [];
// //   bool isloading = false;
// //   @override
// //   void initState() {
// //     super.initState();
// //     this.fetchuser();
// //   }

// //   fetchuser() async {
// //     // print("fetching...");
// //     var url = Uri.parse("https://randomuser.me/api/");
// //     var response = await http.get(url);
// //     if (response.statusCode == 200) {
// //       var items = jsonDecode(response.body)['results'];
// //       // print(items);
// //       setState(() {
// //         users = items;
// //       });

// //       }
// //       else{
// //         setState(() {
// //           users = [];
// //         });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Text("index page"),
// //         ),
// //         body: getbody());
// //   }

// //   Widget getbody() {
// //     List items = ["1", "2"];
// //     return ListView.builder(
// //       itemCount: users.length,
// //       itemBuilder: (BuildContext context, int index) {
// //         return ListTile(
// //           title: Text("text $index"),
// //         );
// //       },
// //     );
// //   }
// // }
import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:sample_user_listing/themes/color.dart';
import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  List pop = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var url = Uri.parse(
        "https://8b648f3c-b624-4ceb-9e7b-8028b7df0ad0.mock.pstmn.io/dishes/v1/");
    var response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['dishes'];
      var items2 = json.decode(response.body)['popularDishes'];
      setState(() {
        users = items;
        pop = items2;
        isLoading = false;
      });
    } else {
      users = [];
      pop = [];
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (users.contains(null) || users.length < 0 || isLoading) {
      return Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF42A5F5)),
      ));
    }
    return Column(
      children: [
        // Container(
        //   child: ListView.builder(
        //       itemCount: users.length,
        //       itemBuilder: (context, index) {
        //         return getCard(users[index]);
        //       }),
        // ),
        // // SizedBox(height: 20,),
        // Expanded(
        //   child: ListView.builder(
        //       scrollDirection: Axis.vertical,
        //       shrinkWrap: true,
        //       itemCount: pop.length,
        //       itemBuilder: (context, index) {
        //         return Column(
        //           children: [
        //             getCard(users[index]),
        //             popCard(pop[index]),
        //           ],
        //         );
        //       }),
        // ),
        getCard()
      ],
    );
  }

  Widget getCard() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
    var Name = users[index]['name'];

    var email = users[index]['rating'];
    var profileUrl = users[index]['image'];
        return Card(
          elevation: 1.5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(60 / 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(profileUrl))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 140,
                          child: Text(
                            Name,
                            style: TextStyle(fontSize: 17),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        email.toString(),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
        ;
      },
    );
  }
  Widget popCard() {
   
    return ListView.builder(
      itemCount: pop.length,
      itemBuilder: (BuildContext context, int index) {
         var Name = pop[index]['name'];
    var email = pop[index]['rating'];
    var profileUrl = pop[index]['image'];
        return Card(
          elevation: 1.5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(60 / 2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(profileUrl))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 140,
                          child: Text(
                            Name,
                            style: TextStyle(fontSize: 17),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        email.toString(),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
        ;
      },
    );
  }
}
