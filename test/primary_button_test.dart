import 'package:bubble_tea/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PrimaryButton', () {
    testWidgets('displays button text and calls onTap when pressed',
        (WidgetTester tester) async {
      bool buttonPressed = false;

      // Create the PrimaryButton widget
      final widget = PrimaryButton(
        onTap: () {
          buttonPressed = true;
        },
        buttonText: 'Test Button',
      );

      // Add the widget to the widget tree
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

      // Verify that the button text is displayed
      expect(find.text('Test Button'), findsOneWidget);

      // Tap the button
      await tester.tap(find.text('Test Button'));
      await tester.pump();

      // Verify that onTap was called
      expect(buttonPressed, isTrue);
    });
  });
}
