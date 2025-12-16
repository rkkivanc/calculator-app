import 'package:flutter/material.dart';
import 'package:calculator/project_styles.dart';
import 'package:calculator/functions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      child: Text(displayText, style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (displayText.length > 1) {
                            displayText = displayText.substring(
                              0,
                              displayText.length - 1,
                            );
                          } else {
                            displayText = "0";
                          }
                        });
                      },
                      style: ProjectStyles.cAndACButtonStyle,
                      child: Text(
                        "C",
                        style: ProjectStyles.cAndACButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          displayText = "0";
                        });
                      },
                      style: ProjectStyles.cAndACButtonStyle,
                      child: Text(
                        "AC",
                        style: ProjectStyles.cAndACButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (displayText.endsWith("%")) {
                          // Do nothing
                        } else if (displayText.endsWith("-") ||
                            displayText.endsWith("*") ||
                            displayText.endsWith("/") ||
                            displayText.endsWith("+")) {
                          displayText = displayText.substring(
                            0,
                            displayText.length - 1,
                          );
                          setState(() {
                            displayText += "%";
                          });
                        } else {
                          setState(() {
                            displayText += "%";
                          });
                        }
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "%",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (displayText.endsWith("/")) {
                          // Do nothing
                        } else if (displayText.endsWith("-") ||
                            displayText.endsWith("*") ||
                            displayText.endsWith("+") ||
                            displayText.endsWith("%")) {
                          displayText = displayText.substring(
                            0,
                            displayText.length - 1,
                          );
                          setState(() {
                            displayText += "/";
                          });
                        } else {
                          setState(() {
                            displayText += "/";
                          });
                        }
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "/",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "7";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "7",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "8";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "8",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "9";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "9",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (displayText.endsWith("*")) {
                          // Do nothing
                        } else if (displayText.endsWith("-") ||
                            displayText.endsWith("+") ||
                            displayText.endsWith("/") ||
                            displayText.endsWith("%")) {
                          displayText = displayText.substring(
                            0,
                            displayText.length - 1,
                          );
                          setState(() {
                            displayText += "*";
                          });
                        } else {
                          setState(() {
                            displayText += "*";
                          });
                        }
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "x",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "4";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "4",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "5";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "5",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "6";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "6",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (displayText.endsWith("-")) {
                          // Do nothing
                        } else if (displayText.endsWith("+") ||
                            displayText.endsWith("*") ||
                            displayText.endsWith("/") ||
                            displayText.endsWith("%")) {
                          displayText = displayText.substring(
                            0,
                            displayText.length - 1,
                          );
                          setState(() {
                            displayText += "-";
                          });
                        } else {
                          setState(() {
                            displayText += "-";
                          });
                        }
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "-",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "1";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "1",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "2";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "2",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          removeTrailingZero();
                          displayText += "3";
                          displayText = removeLeadingZero();
                        });
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "3",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (displayText.endsWith("+")) {
                          // Do nothing
                        } else if (displayText.endsWith("-") ||
                            displayText.endsWith("*") ||
                            displayText.endsWith("/") ||
                            displayText.endsWith("%")) {
                          displayText = displayText.substring(
                            0,
                            displayText.length - 1,
                          );
                          setState(() {
                            displayText += "+";
                          });
                        } else {
                          setState(() {
                            displayText += "+";
                          });
                        }
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "+",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ProjectStyles.operatorButtonStyle,
                      child: Icon(
                        Icons.calculate_rounded,
                        size: 24,
                        color: AppConstants.operatorStyleColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (!displayText.endsWith("0")) {
                          setState(() {
                            displayText += "0";
                          });
                        }
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        "0",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (!displayText.contains(".")) {
                          setState(() {
                            displayText += ".";
                          });
                        }
                      },
                      style: ProjectStyles.numberButtonStyle,
                      child: Text(
                        ".",
                        style: ProjectStyles.numberButtonTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          displayText = calculate(displayText);
                        });
                      },
                      style: ProjectStyles.operatorButtonStyle,
                      child: Text(
                        "=",
                        style: ProjectStyles.operatorButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
