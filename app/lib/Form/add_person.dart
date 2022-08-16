import 'package:flutter/material.dart';

class AddPerson extends StatefulWidget {
  const AddPerson({Key? key}) : super(key: key);

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 181, 237),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ADD TODO",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
        toolbarHeight: 121,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 45),
          Card(
            color: const Color.fromRGBO(179, 183, 238, 1),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'TODO TITLE',
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            indent: 15, // empty space to the leading edge of divider.
            endIndent: 15, // empty space to the trailing edge of the divider.
            height: 15, // The divider's height extent.
          ),
          Card(
            color: const Color.fromRGBO(179, 183, 238, 1),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'TODO SUB TITLE',
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            indent: 15, // empty space to the leading edge of divider.
            endIndent: 15, // empty space to the trailing edge of the divider.
            height: 15, // The divider's height extent.
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: const Text(
              'ADD TODO',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
