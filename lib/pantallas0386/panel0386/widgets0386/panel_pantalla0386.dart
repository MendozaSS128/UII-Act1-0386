import 'package:flutter/material.dart';
import 'package:mendoza0386/pantallas0386/panel0386/widgets0386/item_artistas0386.dart';

class PanelPantalla0386 extends StatelessWidget {
  const PanelPantalla0386({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff111111),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white)),
        actions: [
          const Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/MendozaSS128/Img_iOS/main/avatar2.png"))),
        ],
        title: const Text(
          'Spotify Mendoza0386',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff161616),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
          child: const TextField(
              decoration: InputDecoration(
                  hintText: "¿Qué quieres escuchar?",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffffffff),
                  ))),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/MendozaSS128/Img_iOS/main/FlutterFlowAct12/spotify.jpg"))),
        ),
        ListTile(
          title: Text("Albums populares"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_off_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (int i = 1; i <= 10; i++) const Itemartistas()],
        ))
      ]),
    );
  }
}
