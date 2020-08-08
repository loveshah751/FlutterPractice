import 'dart:convert';

class Gson{
 
 static Map<String,dynamic> toObject(String json){
  return jsonDecode(json);
  }
}
