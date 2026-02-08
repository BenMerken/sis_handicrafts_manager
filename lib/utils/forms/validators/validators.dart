/// Utility class for validator actions.
class Validators {
  /// Evaluate passed value for all passed validator functions.
  /// First validator to trigger an error returns its error message.
  static String? Function(String? value) compose(
    List<String? Function(String?)> validators,
  ) => (String? value) {
    for (var validator in validators) {
      var errorMessage = validator(value);

      if (errorMessage != null) {
        return errorMessage;
      }
    }

    return null;
  };
}
