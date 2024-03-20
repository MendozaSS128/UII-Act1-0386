import 'package:flutter/material.dart';
import 'package:mendoza0386/pantallas0386/panel0386/widgets0386/panel_pantalla0386.dart';

class Itemartistas extends StatelessWidget {
  const Itemartistas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5),
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/MendozaSS128/Img_iOS/main/albums.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Albums",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Color(0xffd7db0c),
                      size: 18,
                    )),
          ),
        ],
      ),
    );
  }
}
