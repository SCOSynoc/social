import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:social/screens/login_screen.dart';
import '../lib/main.dart';

void main() {
  testWidgets('Navigation test', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    // Verify that the initial screen is displayed
    expect(find.text('Register now'), findsOneWidget);

    // Tap the button to navigate to the second screen
    await tester.tap(find.text('Register now'));
    await tester.pumpAndSettle();

    // Verify that the second screen is displayed
    expect(find.text('Registration'), findsOneWidget);
  });
}