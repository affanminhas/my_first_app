import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final String label;
  final GestureTapCallback onPressed;

  const AppButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color(0xFF5D5D67),
                    width: 1
                )
            ),
            child: GestureDetector(
              onTap: onPressed,
              child: Container(
                child: Text(label, style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF191720),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'
                ),)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
