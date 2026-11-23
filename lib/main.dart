import 'package:material_ui/material_ui.dart';
import 'package:photo_plus/home.dart';

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
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
