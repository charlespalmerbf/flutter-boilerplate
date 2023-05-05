import 'package:bubble_tea/components/primary_button.dart';
import 'package:bubble_tea/components/text_field.dart';
import 'package:bubble_tea/pages/forgotten_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('ForgottenPage widget tests', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late ForgottenPage forgottenPage;
    const username = 'example@example.com';

    setUp(() async {
      // Mock Firebase.initializeApp()
      TestWidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      mockFirebaseAuth = MockFirebaseAuth();
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

    testWidgets('reset password button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: forgottenPage));

      final Finder buttonFinder = find.widgetWithText(PrimaryButton, 'Reset Password');
      expect(buttonFinder, findsOneWidget);

      await tester.tap(buttonFinder);
      await tester.pump();
    });

  });
}
