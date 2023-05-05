import 'package:bubble_tea/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TextInput displays hintText', (WidgetTester tester) async {
    const hintText = 'Enter your name';
    final controller = TextEditingController();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TextInput(
          controller: controller,
          hintText: hintText,
          obscureText: false,
          prefixIcon: const Icon(Icons.person),
        ),
      ),
    ));

    expect(find.text(hintText), findsOneWidget);
  });

  testWidgets('TextInput displays prefixIcon', (WidgetTester tester) async {
    final controller = TextEditingController();
    const prefixIcon = Icon(Icons.email);

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TextInput(
          controller: controller,
          hintText: 'Enter your email',
          obscureText: false,
          prefixIcon: prefixIcon,
        ),
      ),
    ));

    expect(find.byWidget(prefixIcon), findsOneWidget);
  });

  testWidgets('TextInput obscureText hides text', (WidgetTester tester) async {
    final controller = TextEditingController();
    const obscureText = true;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TextInput(
          controller: controller,
          hintText: 'Enter your password',
          obscureText: obscureText,
          prefixIcon: const Icon(Icons.lock),
        ),
      ),
    ));

    expect(tester.widget<TextField>(find.byType(TextField)).obscureText, obscureText);
  });
}
