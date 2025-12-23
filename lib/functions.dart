import 'package:math_expressions/math_expressions.dart';

String displayText = "0";

String calculate(String s) {
  ShuntingYardParser p = ShuntingYardParser();
  if (s.endsWith("+") ||
      s.endsWith("-") ||
      s.endsWith("*") ||
      s.endsWith("/")) {
    s = s.substring(0, s.length - 1);
    return s;
  }
  if (s.endsWith("%")) {
    double value = double.parse(s.substring(0, s.length - 1));
    value = value / 100;
    if (value % 1 == 0) {
      return value.toInt().toString();
    } else {
      return value.toString();
    }
  }
  Expression exp = p.parse(s);
  ContextModel cm = ContextModel();
  double result = exp.evaluate(EvaluationType.REAL, cm);
  if (result.isInfinite || result.isNaN) {
    return "Error";
  }
  if (result % 1 == 0) {
    return result.toInt().toString();
  } else {
    return result.toString();
  }
}

int controlLeadingZero() {
  if (displayText[0] == '0' &&
      (displayText[1] != '.' &&
          displayText[1] != '+' &&
          displayText[1] != '*' &&
          displayText[1] != '/' &&
          displayText[1] != '%')) {
    return 1;
  } else {
    return 0;
  }
}

String removeLeadingZero() {
  if (controlLeadingZero() == 1) {
    return displayText.substring(1);
  } else {
    return displayText;
  }
}

void removeTrailingZero() {
  if (displayText.length > 2) {
    if (displayText[displayText.length - 1] == "0" &&
        (displayText[displayText.length - 2] == "+" ||
            displayText[displayText.length - 2] == "-" ||
            displayText[displayText.length - 2] == "*" ||
            displayText[displayText.length - 2] == "/" ||
            displayText[displayText.length - 2] == "%")) {
      displayText = displayText.substring(0, displayText.length - 1);
    }
  }
}

void onPressedNumber(String value) {
  removeTrailingZero();
  displayText += value;
  displayText = removeLeadingZero();
}
