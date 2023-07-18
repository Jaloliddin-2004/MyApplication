// To parse this JSON data, do
//
//     final flowersmodel = flowersmodelFromJson(jsonString);

import 'dart:convert';

Flowersmodel flowersmodelFromJson(String str) => Flowersmodel.fromJson(json.decode(str));

String flowersmodelToJson(Flowersmodel data) => json.encode(data.toJson());

class Flowersmodel {
    int id;
    String name;
    String price;
    String image;

    Flowersmodel({
        required this.id,
        required this.name,
        required this.price,
        required this.image,
    });

    factory Flowersmodel.fromJson(Map<String, dynamic> json) => Flowersmodel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image": image,
    };
}
