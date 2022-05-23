import 'package:flutter/material.dart';

class cards extends StatefulWidget {
  const cards({Key? key}) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          foodlistcards(
              name: "Chicken Biryani",
              rate: 4.2,
              time: 32,
              img:
                  "https://media.istockphoto.com/photos/chicken-biryani-with-yogurt-dip-popular-indian-pakistani-non-food-picture-id1254720533"),foodlistcards(
              name: "Chicken Biryani",
              rate: 4.2,
              time: 32,
              img:
                  "https://media.istockphoto.com/photos/chicken-biryani-with-yogurt-dip-popular-indian-pakistani-non-food-picture-id1254720533"),foodlistcards(
              name: "Chicken Biryani",
              rate: 4.2,
              time: 32,
              img:
                  "https://media.istockphoto.com/photos/chicken-biryani-with-yogurt-dip-popular-indian-pakistani-non-food-picture-id1254720533"),foodlistcards(
              name: "Chicken Biryani",
              rate: 4.2,
              time: 32,
              img:
                  "https://media.istockphoto.com/photos/chicken-biryani-with-yogurt-dip-popular-indian-pakistani-non-food-picture-id1254720533"),foodlistcards(
              name: "Chicken Biryani",
              rate: 4.2,
              time: 32,
              img:
                  "https://media.istockphoto.com/photos/chicken-biryani-with-yogurt-dip-popular-indian-pakistani-non-food-picture-id1254720533")
        ],
      ),
    );
  }
}

class foodlistcards extends StatelessWidget {
  foodlistcards({
    Key? key,
    required this.name,
    required this.rate,
    required this.time,
    required this.img,
  }) : super(key: key);
  final String name, img;
  double rate, time;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Stack(alignment: Alignment.center, children: [

              //             Icon(
              //               Icons.crop_square_sharp,
              //               color: Colors.green,
              //               size: 36,
              //             ),
              //             Icon(
              //               Icons.circle,
              //               color: Colors.green,
              //               size: 15,
              //             ),

              //           ]),
              // ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        Icon(
                          Icons.crop_square_sharp,
                          color: Colors.green,
                          size: 36,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 15,
                        ),
                      ]),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: Text(
                              rate.toString(),
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 12),
                            ),
                            icon: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.door_front_door_outlined),
                      SizedBox(
                        width: 2.5,
                      ),
                      Icon(Icons.door_front_door),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ingredients",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "SeeAll",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.orange),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 15,
                                    color: Colors.orange,
                                  )
                                ],
                              ),

                              // TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(fontSize: 10,color: Colors.orange),))
                            ]),
                      )
                      // Icon(Icons.door_front_door_outlined),
                      ,
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 15,
                        ),
                        Text(time.toString()),
                      ],
                    ),
                  ),

                  // Text(
                  //     "Masala Mughalai",),
                  //     Row(
                  //       children: [
                  //         Icon(Icons.timer),
                  //         Text("42 mins")
                  //       ],
                  //     ),
                  // ,Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Wrap(children:[ Text("Chicken fried in deep tomto sauce with delicious spices",style: TextStyle(fontSize: 10),)]),
                  // )
                ],
              ),

              // TextButton.icon(onPressed: (){},label: Text("4.2",style: TextStyle(color: Colors.orange),), icon: Icon(Icons.star,color: Colors.orange,),),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  height: 150,
                  width: 120,
                  image: NetworkImage(img),
                ),
              ),
            ],
          ),
        ),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
