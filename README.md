# Nextflow's Thai Personal Id checker

Thai people's personal ID has 13 digit. So I decided to create a class with validate method to check correction. 

you can apply it directly to TextField's validate result, or decide to invoke `validate()` method yourself.

## Getting Started

You can use this with `TextField`'s `validate` property

```dart

ThaiIdValidator validator = ThaiIdValidator(errorMessage: 'Please check again');

TextField(
    validate: validator.validate
)
```