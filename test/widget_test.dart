// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edu_pro/main.dart';

void main() {
  testWidgets('Education App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app loads with the category screen
    expect(find.text('All Category'), findsOneWidget);

    // Verify that search bar exists
    expect(find.byType(TextField), findsOneWidget);

    // Verify that at least one category is displayed
    expect(find.text('3D Design'), findsOneWidget);
  });
}