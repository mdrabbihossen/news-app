// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

List<News> newsFromJson(String str) =>
    List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    required this.status,
    required this.sources,
  });

  String status;
  List<Source> sources;

  factory News.fromJson(Map<String, dynamic> json) => News(
        status: json["status"],
        sources:
            List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "sources": List<dynamic>.from(sources.map((x) => x.toJson())),
      };
}

class Source {
  Source({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.category,
    required this.language,
    required this.country,
  });

  String id;
  String name;
  String description;
  String url;
  Category category;
  String language;
  String country;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        url: json["url"],
        category: categoryValues.map[json["category"]]!,
        language: json["language"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "url": url,
        "category": categoryValues.reverse[category],
        "language": language,
        "country": country,
      };
}

enum Category {
  GENERAL,
  BUSINESS,
  TECHNOLOGY,
  SPORTS,
  ENTERTAINMENT,
  HEALTH,
  SCIENCE
}

final categoryValues = EnumValues({
  "business": Category.BUSINESS,
  "entertainment": Category.ENTERTAINMENT,
  "general": Category.GENERAL,
  "health": Category.HEALTH,
  "science": Category.SCIENCE,
  "sports": Category.SPORTS,
  "technology": Category.TECHNOLOGY
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
