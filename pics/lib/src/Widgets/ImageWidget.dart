
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pics/src/Model/ImageModel.dart';

class ImageWidget extends StatelessWidget{
  
  final List<ImageModel> images;
  ImageWidget(this.images);

  @override
  Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: images.length,
        ///  * [WidgetBuilder], which is similar but only takes a [BuildContext].
        ///  * [TransitionBuilder], which is similar but also takes a child.
        //typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);
        itemBuilder: (context,index) => 
        createImageWidget(images[index])
        ,
      );
  }

  Widget createImageWidget(ImageModel image){
    return Container(decoration: 
                          BoxDecoration(border: Border.all(color: Colors.red)
                           ,color: Colors.cyan,),
                          margin: EdgeInsets.all(20.0),
                          padding: EdgeInsets.all(20.0),
                          child: getImageAndText(image)
                          ,);
  }

  Widget getImageAndText(ImageModel model){
    return Column(children: <Widget>[
      Padding(child:Image.network(model.url) ,
      padding: EdgeInsets.only(bottom:8.0),)
      ,
      Text(model.title),
    ],
    );
  }

  
}