/// Utility class with static factory methods for creating function that return error messages,
/// if passed conditions are violated.
class TextInputValidators {
  static required() =>
      (String? val) =>
          val == null || val == "" ? "Dit veld is verplicht." : null;

  static nonEmpty() =>
      (String? val) =>
          val != null && val.isEmpty ? "Dit veld mag niet leeg zijn." : null;

  static minLength(int minLength) =>
      (String? val) =>
          val != null && val.split("").length < minLength
              ? "Dit veld is te kort. (Min. $minLength karakters)"
              : null;

  static maxLength(int maxLength) =>
      (String? val) =>
          val != null && val.split("").length > maxLength
              ? "Dit veld is te lang. (max. $maxLength karakters)"
              : null;
}
