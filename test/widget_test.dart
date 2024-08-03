import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/main.dart';
import 'package:flutter_todo_app/screens/home.dart';

void main() {
  testWidgets('Add new to-do item and search functionality', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Add a new todo item'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);

    // Tap the '+' icon to add a new to-do item
    await tester.enterText(find.byType(TextField).first, 'Buy groceries');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the new to-do item appears in the list
    expect(find.text('Buy groceries'), findsOneWidget);

    // Test search functionality
    await tester.enterText(find.byType(TextField).at(1), 'Buy');
    await tester.pump();
    expect(find.text('Buy groceries'), findsOneWidget);

    // Clear the search and verify that the item still appears
    await tester.enterText(find.byType(TextField).at(1), '');
    await tester.pump();
    expect(find.text('Buy groceries'), findsOneWidget);
  });
}
