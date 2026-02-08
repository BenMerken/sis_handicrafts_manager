/// Utility class with static factory methods for creating function that return error messages,
/// if passed conditions are violated.
class TextInputValidators {
  static String? Function(String? val) required() =>
      (String? val) =>
          val == null || val == "" ? "Dit veld is verplicht." : null;

  static String? Function(String? val) nonEmpty() =>
      (String? val) =>
          val != null && val.isEmpty ? "Dit veld mag niet leeg zijn." : null;

  static String? Function(String? val) minLength(int minLength) =>
      (String? val) => val != null && val.split("").length < minLength
      ? "Dit veld is te kort. (Min. $minLength karakters)"
      : null;

  static String? Function(String? val) maxLength(int maxLength) =>
      (String? val) => val != null && val.split("").length > maxLength
      ? "Dit veld is te lang. (max. $maxLength karakters)"
      : null;
}
