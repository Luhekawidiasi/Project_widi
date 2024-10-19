import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menempatkan teks di sebelah kiri
            child: Text(
              "Pembimbing Akademik (PA)",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ClipOval(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/9/9e/Jungkook_for_Dispatch_%22Boy_With_Luv%22_MV_behind_the_scene_shooting%2C_15_March_2019_07_(cropped).jpg",
              height: 200, // Disesuaikan agar proporsional dengan bentuk bulat
              width: 200,
              fit: BoxFit.cover, // Menyesuaikan gambar dengan bingkai bulat
            ),
          ),
          Row(
            children: [
              Icon(Icons.person),
              Text("Luh Eka Widiasih"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email),
              Text("widiasiheka68@gmail.com"),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
