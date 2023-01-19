import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class MyForm extends StatelessWidget {
  MyForm({
    Key? key,
    required this.hint,
    this.applyPadding = true,
    this.suffix,
  });

  String hint;
  Icon? suffix;
  bool applyPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: applyPadding
          ? const EdgeInsets.fromLTRB(15, 10, 15, 5)
          : EdgeInsets.zero,
      child: TextFormField(
        // maxLines: 6,
        decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),

          // contentPadding: EdgeInsets.fromLTRB(12, 24, 100, 16),
          filled: true,
          fillColor: Color.fromARGB(255, 101, 105, 113),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: 0.1,
              color: Color(0xffE2E6EB),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

// dynamic Fill(hint, assignedIcon) {
//   String? hint;
//   Widget? assignedIcon;
//   Padding(
//     padding: const EdgeInsets.fromLTRB(35, 30, 35, 30),
//     child: TextFillField(
//       // maxLines: 6,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: const TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//         ),
//         prefixIcon: assignedIcon,
//         // SvgPicture.asset(
//         //   'images/person_outline.svg ',
//         //   color: Colors.black,
//         // ),
//         // contentPadding: EdgeInsets.fromLTRB(12, 24, 100, 16),
//         filled: false,

//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide(
//             color: Color.fromARGB(255, 237, 234, 234),
//           ),
//         ),
//       ),
//     ),
//   );
// }
