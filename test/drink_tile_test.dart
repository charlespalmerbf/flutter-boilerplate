import 'package:flutter_boilerplate/components/drink_tile.dart';
import 'package:flutter_boilerplate/models/drink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DrinkTile', () {
    testWidgets('displays drink name and image', (WidgetTester tester) async {
      // Create a Drink object to use in the test
      final drink = Drink(
        name: 'Test Drink',
        price: '\$3.50',
        imagePath: 'lib/images/milk_tea.png',
      );

      // Create the DrinkTile widget
      final widget = DrinkTile(
        drink: drink,
        onTap: () {},
        trailing: const Icon(Icons.favorite_border),
      );

      // Add the widget to the widget tree
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

      // Verify that the drink name and image are displayed
      expect(find.text('Test Drink'), findsOneWidget);
      expect(find.text('\$3.50'), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });
  });
}
