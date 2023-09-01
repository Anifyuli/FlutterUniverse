import 'package:flutter/material.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  final Color mainColor, secondColor;
  final IconData iconData;

  @override
  State<ColorfulButton> createState() => _ColorfulButtonState();

  const ColorfulButton(this.mainColor, this.secondColor, this.iconData ,{super.key});
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? widget.secondColor : widget.mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color:
                          (isPressed) ? widget.secondColor : widget.mainColor,
                      child: Transform.rotate(
                          angle: -pi / 4,
                          child:
                            Icon(widget.iconData, color: Colors.white))),
                ),
                Transform.translate(
                  offset: const Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
