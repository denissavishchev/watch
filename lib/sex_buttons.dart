import 'package:flutter/cupertino.dart';

class UnitsButton extends StatelessWidget {
  const UnitsButton({Key? key, required this.color, required this.child, required this.onPress, required this.frameColor}) : super(key: key);

  final Color color;
  final Color frameColor;
  final Widget child;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: frameColor,),
        ),
        child: child,
      ),
    );
  }
}

