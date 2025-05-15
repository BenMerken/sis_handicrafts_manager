import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sis_handicrafts_manager/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our overview page contains expected text.
    expect(find.text('Overview page...'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify the 'Coming soon!' snackbar appears.
    expect(find.text('Coming soon!'), findsOneWidget);
  });
}
