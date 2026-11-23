import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const PhotoPlus());
}

class PhotoPlus extends StatelessWidget {
  const PhotoPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Plus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "PhotoPlus",
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
              fontWeight: FontWeight(500),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
