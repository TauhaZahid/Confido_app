import 'package:flutter/material.dart';

class ActualButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const ActualButton({super.key,required this.onTap,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //GO TO LOGIN PAGE
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(350, 55),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
