/* class StudentModel {
  String? name;
  String? email;
  String? qualification;
  int? age;
  String? mobileNumber;

  StudentModel({
    this.mobileNumber,
    this.name,
    this.email,
    this.qualification,
    this.age,
  });
} */

// To parse this JSON data, do
//
//     final myClass = myClassFromJson(jsonString);
// To parse this JSON data, do
//
//     final myClass = myClassFromJson(jsonString);

//
////BIT COIN API
///
///
///
///
/* class MyClass {
  Time? time;
  String? disclaimer;
  String? chartName;
  Bpi? bpi;

  MyClass({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  factory MyClass.fromJson(Map<String, dynamic> json) => MyClass(
        time: json["time"] == null ? null : Time.fromJson(json["time"]),
        disclaimer: json["disclaimer"],
        chartName: json["chartName"],
        bpi: json["bpi"] == null ? null : Bpi.fromJson(json["bpi"]),
      );
}

class Bpi {
  Eur? usd;
  Eur? gbp;
  Eur? eur;

  Bpi({
    this.usd,
    this.gbp,
    this.eur,
  });

  factory Bpi.fromJson(Map<String, dynamic> json) => Bpi(
        usd: json["USD"] == null ? null : Eur.fromJson(json["USD"]),
        gbp: json["GBP"] == null ? null : Eur.fromJson(json["GBP"]),
        eur: json["EUR"] == null ? null : Eur.fromJson(json["EUR"]),
      );

  Map<String, dynamic> toJson() => {
        "USD": usd?.toJson(),
        "GBP": gbp?.toJson(),
        "EUR": eur?.toJson(),
      };
}

class Eur {
  String? code;
  String? symbol;
  String? rate;
  String? description;
  double? rateFloat;

  Eur({
    this.code,
    this.symbol,
    this.rate,
    this.description,
    this.rateFloat,
  });

  factory Eur.fromJson(Map<String, dynamic> json) => Eur(
        code: json["code"],
        symbol: json["symbol"],
        rate: json["rate"],
        description: json["description"],
        rateFloat: json["rate_float"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "symbol": symbol,
        "rate": rate,
        "description": description,
        "rate_float": rateFloat,
      };
}

class Time {
  String? updated;
  DateTime? updatedIso;
  String? updateduk;

  Time({
    this.updated,
    this.updatedIso,
    this.updateduk,
  });

  factory Time.fromJson(Map<String, dynamic> json) => Time(
        updated: json["updated"],
        updatedIso: json["updatedISO"] == null
            ? null
            : DateTime.parse(json["updatedISO"]),
        updateduk: json["updateduk"],
      );
} */
////
///
///
///
///
///New API
//

// To parse this JSON data, do
//
//     final myClass = myClassFromJson(jsonString);

import 'dart:convert';

MyClass myClassFromJson(String str) => MyClass.fromJson(json.decode(str));

String myClassToJson(MyClass data) => json.encode(data.toJson());

class MyClass {
  List<Datum>? data;

  MyClass({
    this.data,
  });

  factory MyClass.fromJson(Map<String, dynamic> json) => MyClass(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  String? idNation;
  String? nation;
  int? idYear;
  String? year;
  int? population;
  String? slugNation;

  Datum({
    this.idNation,
    this.nation,
    this.idYear,
    this.year,
    this.population,
    this.slugNation,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idNation: json["ID Nation"],
        nation: json["Nation"],
        idYear: json["ID Year"],
        year: json["Year"],
        population: json["Population"],
        slugNation: json["Slug Nation"],
      );

  Map<String, dynamic> toJson() => {
        "ID Nation": idNation,
        "Nation": nation,
        "ID Year": idYear,
        "Year": year,
        "Population": population,
        "Slug Nation": slugNation,
      };
}
