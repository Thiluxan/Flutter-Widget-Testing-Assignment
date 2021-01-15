import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_assignment/main.dart';

void main() {
  testWidgets('Input text should be displayed', (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: MyApp(),
    ));

    var textInput = find.byType(TextField);
    expect(textInput, findsOneWidget);
    await tester.enterText(textInput, "thiluxan");
    await tester.tap(find.widgetWithText(RaisedButton, "Display Text"));
    await tester.pump();
    expect(find.text("thiluxan"), findsOneWidget);
  });
}
