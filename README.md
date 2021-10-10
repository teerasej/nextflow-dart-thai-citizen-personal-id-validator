# Nextflow's Thai Personal Id checker

![Coverage](./coverage_badge.svg?sanitize=true)

Thai people's personal ID has 13 digit. So I decided to create a class with validate method to check correction.

you can apply it directly to TextField's validate result, or decide to invoke `validate()` method yourself.

## Getting Started

You can use this with `TextFormField`'s `validate` property

### Using with TextFormField

```dart

ThaiIdValidator validator = ThaiIdValidator(errorMessage: 'Incorrect, Please check again');

TextFormField(
    validate: validator.validate
)
```

### Using in dart code

```dart

ThaiIdValidator validator = ThaiIdValidator(errorMessage: 'Incorrect, Please check again');

String errorMessage = validator.validate('thai personal id');

if(errorMessage != null) {
    // personal id not pass
} else {
    // go go!
}
```

### Using static method

NOTE: This static method cannot be used with `TextFormField`

```dart

String errorMessage = ThaiIdValidator.validateNow(personalId: 'thai personal id', errorMessage: 'Incorrect, Please check again');

if(errorMessage != null) {
    // personal id not pass
} else {
    // go go!
}
```
