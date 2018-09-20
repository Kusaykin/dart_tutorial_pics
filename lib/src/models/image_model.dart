class ImageModel {
  String url;
  String title;
  int id;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> myJson){
    id=myJson['id'];
    url=myJson['url'];
    title=myJson['title'];
  }

}