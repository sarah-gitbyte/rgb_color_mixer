import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_color_mixer/main.dart';

void main() {
  testWidgets('Ujian Halaman RGB Color Mixer', (WidgetTester tester) async {
    // 1. Bina aplikasi kita (MyApp) dan kemas kini frame.
    await tester.pumpWidget(MyApp());

    // 2. Sahkan paparan teks Tajuk (AppBar) wujud.
    expect(find.text('Color Mixer'), findsOneWidget);

    // 3. Sahkan label bagi setiap penukar warna wujud pada skrin.
    expect(find.text('Red'), findsOneWidget);
    expect(find.text('Green'), findsOneWidget);
    expect(find.text('Blue'), findsOneWidget);

    // 4. Sahkan Slider wujud dalam aplikasi.
    // Memandangkan ada 3 Slider (Red, Green, Blue), kita patut jumpa 3 widget Slider.
    expect(find.byType(Slider), findsNWidgets(3));
  });
}