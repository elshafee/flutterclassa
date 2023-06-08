import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  List<String> images = [
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://lh3.googleusercontent.com/y1xqD3HBWkLdTf646GDJREHU5KfVzqzHCA3WDORTkGnNcvwdsloSPKVk_LB00xWq5Ur9kxHxteTiHE2fJQ8wklvt0UczmRwALoRV8sATIl8BeMSdw1s3sjcqHdUWBt9Gqj0e25evBOo=w500",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096"
  ];
  //GirdView
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Widgets"),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(images[index]);
        },
      ),
    );
  }
}

class ItemImage extends StatefulWidget {
  String url = '';
  int index = 0;
  ItemImage({super.key, required url, required index});

  @override
  State<ItemImage> createState() => _ItemImageState();
}

class _ItemImageState extends State<ItemImage> {
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Image.network(widget.url),
    );
  }
}
