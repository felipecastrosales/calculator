// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester

import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/screens/calculator.dart';

void main() {
  group('Should Renders ', () {
    testWidgets('Calculator widget', (tester) async {
      await tester.pumpWidget(const Calculator());
      expect(find.byType(Calculator), findsOneWidget);
    });
  });
}
