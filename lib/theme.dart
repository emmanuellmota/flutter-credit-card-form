part of credit_card_form;

class CreditCardDarkTheme implements CreditCardTheme {
  @override
  Color backgroundColor = const Color(0xFF181E28);
  @override
  Color borderColor = const Color(0xFF232C3B);
  @override
  TextStyle textStyle = const TextStyle();
  @override
  TextStyle hintStyle = const TextStyle(color: Colors.white54);
}

class CreditCardLightTheme implements CreditCardTheme {
  @override
  Color backgroundColor = const Color(0xFFF9F9F9);
  @override
  Color borderColor = const Color(0xFFe8e8f6);
  @override
  TextStyle textStyle = const TextStyle();
  @override
  TextStyle hintStyle = const TextStyle(color: Colors.black54);
}

abstract class CreditCardTheme {
  late Color backgroundColor;
  late Color borderColor;
  late TextStyle textStyle;
  late TextStyle hintStyle;
}
