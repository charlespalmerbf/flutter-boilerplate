import 'package:bubble_tea/components/primary_button.dart';
import 'package:bubble_tea/components/sso_tile.dart';
import 'package:bubble_tea/components/text_field.dart';
import 'package:bubble_tea/pages/forgotten_page.dart';
import 'package:bubble_tea/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('ForgottenPage widget tests', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late ForgottenPage forgottenPage;
    final username = 'example@example.com';

    setUp(() {
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
      when(mockFirebaseAuth.sendPasswordResetEmail(email: username)).thenAnswer((_) => Future.value());

      await tester.pumpWidget(MaterialApp(home: forgottenPage));

      final Finder buttonFinder = find.widgetWithText(PrimaryButton, 'Reset Password');
      expect(buttonFinder, findsOneWidget);

      await tester.tap(buttonFinder);
      await tester.pump();

      verify(mockFirebaseAuth.sendPasswordResetEmail(email: username)).called(1);
    });

    testWidgets('sign in with Google SSO button test', (WidgetTester tester) async {
      final AuthService authService = AuthService();
      final user = User(uid: '123');

      when(mockFirebaseAuth.signInWithCredential(any)).thenAnswer((_) => Future.value(UserCredential(user: user)));

      await tester.pumpWidget(MaterialApp(home: forgottenPage));

      final Finder ssoTileFinder = find.byType(SSOTile).at(0);
      expect(ssoTileFinder, findsOneWidget);

      await tester.tap(ssoTileFinder);
      await tester.pumpAndSettle();

      verify(authService.signInWithGoogle()).called(1);
    });
  });
}