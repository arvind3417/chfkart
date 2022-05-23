// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
       required this.dishes,
       required this.popularDishes,
    });

    List<Dish> dishes;
    List<PopularDish> popularDishes;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        dishes: List<Dish>.from(json["dishes"].map((x) => Dish.fromJson(x))),
        popularDishes: List<PopularDish>.from(json["popularDishes"].map((x) => PopularDish.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dishes": List<dynamic>.from(dishes.map((x) => x.toJson())),
        "popularDishes": List<dynamic>.from(popularDishes.map((x) => x.toJson())),
    };
}

class Dish {
    Dish({
       required this.name,
       required this.rating,
       required this.description,
       required this.equipments,
       required this.image,
       required this.id,
    });

    String? name;
    double rating;
    String description;
    List<String> equipments;
    String image;
    int id;

    factory Dish.fromJson(Map<String, dynamic> json) => Dish(
        name: json["name"],
        rating: json["rating"].toDouble(),
        description: json["description"],
        equipments: List<String>.from(json["equipments"].map((x) => x)),
        image: json["image"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "rating": rating,
        "description": description,
        "equipments": List<dynamic>.from(equipments.map((x) => x)),
        "image": image,
        "id": id,
    };
}

class PopularDish {
    PopularDish({
        required this.name,
        required this.image,
        required this.id,
    });

    String name;
    String image;
    int id;

    factory PopularDish.fromJson(Map<String, dynamic> json) => PopularDish(
        name: json["name"],
        image: json["image"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "id": id,
    };
}
