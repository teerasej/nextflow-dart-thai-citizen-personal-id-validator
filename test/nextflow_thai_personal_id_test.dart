import 'package:flutter_test/flutter_test.dart';

import 'package:nextflow_thai_personal_id/nextflow_thai_personal_id.dart';

void main() {
  test('should pass with correct thai id', () {
    ThaiIdValidator validator = ThaiIdValidator();
    var result = validator.validate('1100400121236');
    expect(null, result);
  });

  test('should not pass with random thai id', () {
    ThaiIdValidator validator =
        ThaiIdValidator(errorMessage: 'Please check again');
    var result = validator.validate('1111111111111');
    expect('Please check again', result);
  });

  test('should get no-hyphen, dash from clean() with 1-1111-11111-11-1', () {
    var result = ThaiIdValidator.clean('1-1111-11111-11-1');
    expect('1111111111111', result);
  });

  test('should get no-hyphen, dash from clean() with 1111111111111', () {
    var result = ThaiIdValidator.clean('1111111111111');
    expect('1111111111111', result);
  });

  test(
      'should get no whitespace string with leading and trailing from clean() 1',
      () {
    var result = ThaiIdValidator.clean('1-1111-11111-11-1    ');
    expect('1111111111111', result);
  });

  test(
      'should get no whitespace string with leading and trailing from clean() 2',
      () {
    var result = ThaiIdValidator.clean('     1-1111-11111-11-1    ');
    expect('1111111111111', result);
  });
}
