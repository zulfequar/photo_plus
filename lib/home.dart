import 'package:material_ui/material_ui.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
        title: const Text('PhotoPlus'),
      ),
      body: Center(
        child: const Text(
          'Tap on the "Pick photos" button to start',
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () async {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.blue; // Color when pressed
            }
            if (states.contains(WidgetState.hovered)) {
              return Colors.blue.shade600; // Color when hovered
            }
            if (states.contains(WidgetState.disabled)) {
              return Colors.grey; // Color when disabled
            }
            return Colors.lightBlue; // Default color
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.white70;
            }
            if (states.contains(WidgetState.disabled)) {
              return Colors.grey.shade400;
            }
            return Colors.white; // Default resting color
          }),
        ),
        child: const Text('Pick photos'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
