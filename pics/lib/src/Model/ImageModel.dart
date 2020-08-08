
class ImageModel{
  int albumId;
  int id;
  String title;
  String url;

  ImageModel(this.albumId,this.id,this.title,this.url);

  ImageModel.fromMap(Map<String,dynamic> mapValue){
    this.albumId = mapValue['albumId'];
    this.id = mapValue['id'];
    this.title = mapValue['title'];
    this.url = mapValue['url'];
  }

// Dart way of creating the constructor
  ImageModel.fromJson(Map<String,dynamic> value)
    :id = value['id'],
    title = value['title'],
    url = value['url'];

}