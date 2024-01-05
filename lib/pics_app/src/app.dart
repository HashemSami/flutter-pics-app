import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" show get;
import "models/image_model.dart";
import "widgets/image_list.dart";

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _counter = 0;
  final List<ImageModel> images = [];

  void fetchImage() async {
    _counter++;
    try {
      final res = await get(
          Uri.https("jsonplaceholder.typicode.com", "/photos/$_counter"));

      final imageModel = ImageModel.fromJson(json.decode(res.body));

      setState(() {
        images.add(imageModel);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("testing 123"),
        ),
        body: ImageList(images: images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
