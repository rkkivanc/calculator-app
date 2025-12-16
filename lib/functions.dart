import 'package:math_expressions/math_expressions.dart';

String displayText = "0";

String calculate(String s) {
  ShuntingYardParser p = ShuntingYardParser();
  if (s.endsWith("+") ||
      s.endsWith("-") ||
      s.endsWith("*") ||
      s.endsWith("/") ||
      s.endsWith("%")) {
    s = s.substring(0, s.length - 1);
    return s;
  }
  Expression exp = p.parse(s);
  ContextModel cm = ContextModel();
  double result = exp.evaluate(EvaluationType.REAL, cm);
  if (result % 1 == 0) {
    return result.toInt().toString();
  } else {
    return result.toString();
  }
}

int control() {
  if (displayText[0] == '0' && displayText[1] != '.') {
    return 1;
  } else {
    return 0;
  }
}

String removeLeadingZero() {
  if (control() == 1) {
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


