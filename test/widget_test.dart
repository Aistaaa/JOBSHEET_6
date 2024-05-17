import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jobsheet_6/main.dart'; // Assuming your main.dart file is in a directory named 'jobsheet_6'

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TampilNamaMahasiswa());

    // Verify that our text starts with 'Nama Anda'.
    expect(find.text('Nama Anda'), findsOneWidget);
    expect(find.text('Mahasiswa 2'), findsNothing);

    // Tap the floating action button and trigger a frame.
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Verify that the text has changed to the next student's name.
    expect(find.text('Nama Anda'), findsNothing);
    expect(find.text('Mahasiswa 2'), findsOneWidget);
  });
}
