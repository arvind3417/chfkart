// To parse this JSON data, do
//
//     final details = detailsFromJson(jsonString);

import 'dart:convert';

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));

String detailsToJson(Details data) => json.encode(data.toJson());

class Details {
    Details({
        required this.name,
        required this.id,
        required this.timeToPrepare,
        required this.ingredients,
    });

    String? name;
    int id;
    String timeToPrepare;
    Ingredients ingredients;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        name: json["name"],
        id: json["id"],
        timeToPrepare: json["timeToPrepare"],
        ingredients: Ingredients.fromJson(json["ingredients"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "timeToPrepare": timeToPrepare,
        "ingredients": ingredients.toJson(),
    };
}

class Ingredients {
    Ingredients({
        required this.vegetables,
        required this.spices,
        required this.appliances,
    });

    List<Spice> vegetables;
    List<Spice> spices;
    List<Appliance> appliances;

    factory Ingredients.fromJson(Map<String, dynamic> json) => Ingredients(
        vegetables: List<Spice>.from(json["vegetables"].map((x) => Spice.fromJson(x))),
        spices: List<Spice>.from(json["spices"].map((x) => Spice.fromJson(x))),
        appliances: List<Appliance>.from(json["appliances"].map((x) => Appliance.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "vegetables": List<dynamic>.from(vegetables.map((x) => x.toJson())),
        "spices": List<dynamic>.from(spices.map((x) => x.toJson())),
        "appliances": List<dynamic>.from(appliances.map((x) => x.toJson())),
    };
}

class Appliance {
    Appliance({
        required this.name,
        required this.image,
    });

    String name;
    String image;

    factory Appliance.fromJson(Map<String, dynamic> json) => Appliance(
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
    };
}

class Spice {
    Spice({
        required this.name,
        required this.quantity,
    });

    String name;
    String quantity;

    factory Spice.fromJson(Map<String, dynamic> json) => Spice(
        name: json["name"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
    };
}
