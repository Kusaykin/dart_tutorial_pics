import 'dart:convert';

main(List<String> args) {
  //print('Hello world!');
  var rawJson = '{"url":"http://blah.jpg", "id":1}';
  var parseJson = json.decode(rawJson);

  // ImageModel imageModel = new ImageModel(parseJson['id'], parseJson['url']);
  ImageModel imageModel = new ImageModel.fromJson(parseJson);
  print(imageModel.url);
}

class ImageModel {
  String url;
  int id;

  ImageModel(this.id, this.url);
  ImageModel.fromJson(myJson){
    id=myJson['id'];
    url=myJson['url'];
  }

}