import 'package:flutter/material.dart';

class ButtonPressed extends StatefulWidget {
  final String? name;
  // final double? height;
  // final double? width;
  final Icon? icon;
  const ButtonPressed({Key? key, this.name, this.icon}) : super(key: key);

  @override
  State<ButtonPressed> createState() => _ButtonPressedState();
}

class _ButtonPressedState extends State<ButtonPressed> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Container(
        // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(5.0),
            right: Radius.circular(5.0),
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 50),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                offset: const Offset(0.0, 1.0),
                blurRadius: 2.0,
              ),
            ],
            color: _isPressed ? Colors.grey[100] : Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: widget.name != null
                    ? Text(
                        widget.name!,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : InkWell(
                        onTap: () {},
                        child: Icon(
                          widget.icon!.icon,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      )),
          ),
        ),
      ),
    );
  }
}
