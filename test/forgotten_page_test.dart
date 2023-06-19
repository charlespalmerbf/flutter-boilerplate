import 'package:flutter_boilerplate/components/text_field.dart';
import 'package:flutter_boilerplate/pages/forgotten_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('ForgottenPage widget tests', () {
    late ForgottenPage forgottenPage;
    const username = 'example@example.com';

    setUp(() async {
      forgottenPage = ForgottenPage(
        onForgottenTap: () {},
      );
    });

    testWidgets('username text field test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: forgottenPage));

      final Finder textFieldFinder = find.byType(TextInput);
      expect(textFieldFinder, findsOneWidget);

      await tester.enterText(textFieldFinder, username);
      expect((textFieldFinder.evaluate().first.widget as TextInput).controller.text, username);
    });
  });
}
