import 'package:flutter/material.dart';
import 'package:flutter_application_1/body/drpdwn.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 36, fontWeight: FontWeight.bold),
                              )),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: 14,
                                color: Colors.orange,
                              ),
                              label: Text(
                                "4.2",
                                style: TextStyle(color: Colors.orange),
                              )),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Text.rich(TextSpan(
                            text:
                                "for the object to be useful , atlesst one ofte or children should be set",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                fontWeight: FontWeight.w400))),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.timer),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("1 hour",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image(
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width / 3.5,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580")),
                  )
                ],
              ),
            ),
            detailcard(name: "Ingredients", serving: "For two people"),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 6,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("object");
                            },
                            child: Row(
                              children: [
                                // Text(
                                //   "Vegetables",
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 20),
                                // ),
                                MyStatefulWidget()
                                // Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  vegtitle(),
                                  vegtitle(),
                                ],
                              ),
                              Column(
                                children: [
                                  pcs(),
                                  pcs(),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 10),
            )
          ],
        ));
  }
}

class pcs extends StatelessWidget {
  const pcs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        "01pc",
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class vegtitle extends StatelessWidget {
  const vegtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        "Vegetables",
        style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}

class detailcard extends StatelessWidget {
  const detailcard({Key? key, required this.name, required this.serving})
      : super(key: key);
  final String name, serving;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .005,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(serving),
          ),
        ),
      ),
    );
  }
}
