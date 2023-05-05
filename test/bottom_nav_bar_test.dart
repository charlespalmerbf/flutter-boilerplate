import 'package:bubble_tea/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


void main() {
  group('BottomNavBar', () {
    testWidgets('Renders GNav with tabs', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BottomNavBar(
              onTabChange: (value) {},
            ),
          ),
        ),
      );

      expect(find.byType(GNav), findsOneWidget);
      expect(find.byType(GButton), findsNWidgets(2));
    });

    testWidgets('Calls onTabChange when a tab is tapped',
    (WidgetTester tester) async {
      var selectedTab = -1;
      void handleTabChange(int index) {
        selectedTab = index;
      }

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BottomNavBar(
              onTabChange: handleTabChange,
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const Key('cart_button')));
      await tester.pumpAndSettle();
      expect(selectedTab, equals(1));

      await tester.tap(find.text('Shop'));
      await tester.pumpAndSettle();
      expect(selectedTab, equals(0));
    });
  });
}
