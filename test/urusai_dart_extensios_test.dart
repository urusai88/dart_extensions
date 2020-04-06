import 'package:test/test.dart';
import 'package:urusai_dart_extensios/urusai_dart_extensios.dart';

void main() {
  group('A group of tests', () {
    Awesome awesome;

    setUp(() {
      awesome = Awesome();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
