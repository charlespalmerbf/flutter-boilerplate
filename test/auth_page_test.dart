import 'package:bubble_tea/pages/home_page.dart';
import 'package:bubble_tea/pages/login_or_register_page.dart';
import 'package:bubble_tea/pages/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Create a mock FirebaseAuth instance
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  group('AuthPage', () {
    testWidgets('renders LoginOrRegisterPage when user is not authenticated',
        (WidgetTester tester) async {
      final mockAuth = MockFirebaseAuth();

      // Stub the authStateChanges method to return null
      when(mockAuth.authStateChanges()).thenAnswer((_) => Stream.value(null));

      await tester.pumpWidget(
        const MaterialApp(
          home: AuthPage(),
        ),
      );

      expect(find.byType(LoginOrRegisterPage), findsOneWidget);
    });

    testWidgets('renders HomePage when user is authenticated',
        (WidgetTester tester) async {
      final mockAuth = MockFirebaseAuth();

      // Stub the authStateChanges method to return a mock user object
      var displayName;
      var uid;
      when(mockAuth.authStateChanges()).thenAnswer((_) =>
          Stream.value({uid: '123', displayName: 'Test User'} as User?));

      await tester.pumpWidget(
        const MaterialApp(
          home: AuthPage(),
        ),
      );

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
