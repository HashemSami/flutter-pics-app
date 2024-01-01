import "package:flutter/material.dart";

// define the main  function
void main() {
  var app = MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Lets see some images HHs!"),
      ),
    ),
  );

  runApp(app);
}

// creating the text widget


// put the widget on the screen