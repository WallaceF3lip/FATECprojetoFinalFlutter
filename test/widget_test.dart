import 'package:flutter_test/flutter_test.dart';

import 'package:projeto_final/main.dart';

void main() {
  testWidgets('Tela inicial é exibida', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('O que você deseja\npedir?'), findsOneWidget);
    expect(find.text('Categorias'), findsOneWidget);
  });
}
