class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({required this.id, required this.url, required this.title});

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      ImageModel(id: json["id"], url: json["url"], title: json["title"]);

  Map<String, dynamic> toJson() => {"id": id, "url": url, "title": title};
}
