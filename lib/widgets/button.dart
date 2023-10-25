import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}


/**원래코드 */

// Container(
//   //컴포넌트로 만들기
//   decoration: BoxDecoration(
//     color: const Color(0xFF202123),
//     borderRadius: BorderRadius.circular(45),
//   ),
//   child: const Padding(
//     padding: EdgeInsets.symmetric(
//       vertical: 20,
//       horizontal: 50,
//     ),
//     child: Text(
//       'Request',
//       style: TextStyle(
//         fontSize: 20,
//         color: Colors.white,
//       ),
//     ),
//   ),
// ),
