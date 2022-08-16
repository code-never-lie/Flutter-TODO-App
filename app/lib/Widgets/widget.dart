import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(179, 183, 238, 1),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
          title: const Text("TODO TITLE",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              )),
          subtitle: const Text("TODO SUBTITLE",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              )),
          trailing: Checkbox(
            value: isChecked,
            checkColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          onTap: () {}),
    );
  }
}
