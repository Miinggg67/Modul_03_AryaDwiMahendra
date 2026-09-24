import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_aryak/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Perpustakaan Kampus'), findsOneWidget);
  });
}
