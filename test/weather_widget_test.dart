// Flutter
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// Testing
import 'package:flutter_test/flutter_test.dart';
// Custom Widgets
import 'package:weather_cast/ui/Weather.dart';

void main(){
  testWidgets('Weather Widget Test', (WidgetTester tester) async{
    // Build the Widget using testerPumpWidget
    await tester.pumpWidget(directAncestor(Weather()));

    // search presence of RichText Cards within our Weather Widget, 1 or more
    expect(find.byType(RichText), findsWidgets);
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(Column), findsOneWidget);
    expect(find.text('Cloudy'), findsOneWidget);
  });
}

// RichText Widgets require a "Directionality Widget" ancestor
Widget directAncestor(Widget child){
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Center(
      child: child,
    ),
  );
}