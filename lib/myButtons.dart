import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  NewButton({required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 83, 75, 218),
          ),
          fixedSize: MaterialStateProperty.all(Size(double.infinity, 45)),
          elevation: MaterialStateProperty.all(4.0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
