import 'package:flutter/material.dart';
import 'package:netflix/api/api_constant.dart';

class VideoWidget extends StatelessWidget {
   VideoWidget({
    super.key,
    this.title
  });
  String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: Image.network(baseurl+title!, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(.5),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.volume_off_outlined)),
          ),
        ),
      ],
    );
  }
}
