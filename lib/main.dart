import 'package:flutter/material.dart';
import 'color_circle.dart';
import 'color_value_changer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Mixer',
      home: ColorMixerPage(),
    );
  }
}

class ColorMixerPage extends StatefulWidget {
  @override
  _ColorMixerPageState createState() => _ColorMixerPageState();
}

class _ColorMixerPageState extends State<ColorMixerPage> {
  double red = 0;
  double green = 0;
  double blue = 0;

  void updateColor(String channel, double value) {
    setState(() {
      if (channel == 'red') red = value;
      if (channel == 'green') green = value;
      if (channel == 'blue') blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Mixer')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ColorCircle(
              color: Color.fromARGB(255, red.toInt(), green.toInt(), blue.toInt()),
              size: 135,
            ),
            SizedBox(height: 15),
            
            ColorValueChanger(
              label: "Red",
              value: red,
              activeColor: Colors.red,
              onChanged: (val) => updateColor('red', val),
            ),
            ColorValueChanger(
              label: "Green",
              value: green,
              activeColor: Colors.green,
              onChanged: (val) => updateColor('green', val),
            ),
            ColorValueChanger(
              label: "Blue",
              value: blue,
              activeColor: Colors.blue,
              onChanged: (val) => updateColor('blue', val),
            ),
          ],
        ),
      ),
    );
  }
}