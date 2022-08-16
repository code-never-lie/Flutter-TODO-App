import 'package:app/Form/add_person.dart';
import 'package:app/Widgets/widget.dart';
import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  bool click = false;
  bool clickDone = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 181, 237),
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 75,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    click = true;
                  });
                },
                child: click
                    ? const Text("TODO",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          
                        ))
                    : const Text("TODO",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.normal,
                        ))),
            const SizedBox(
              width: 25,
            ),
            const Text("|",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              width: 35,
            ),
            InkWell(
              
              onTap: () {
                setState(() {
                  clickDone = true;
                });
              },
              child: clickDone
                  ? const Text("DONE",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        
                      ))
                  : const Text("DONE",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )),
                      
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
        toolbarHeight: 121,
      ),
      body: ListView(children: const [
        SizedBox(
          height: 15,
        ),
        MyWidget(),
        Divider(
          indent: 15, // empty space to the leading edge of divider.
          endIndent: 15, // empty space to the trailing edge of the divider.
          height: 15, // The divider's height extent.
        ),
        MyWidget(),
        Divider(
          indent: 15, // empty space to the leading edge of divider.
          endIndent: 15, // empty space to the trailing edge of the divider.
          height: 15, // The divider's height extent.
        ),
        MyWidget(),
        Divider(
          indent: 15, // empty space to the leading edge of divider.
          endIndent: 15, // empty space to the trailing edge of the divider.
          height: 15, // The divider's height extent.
        ),
        MyWidget(),
        Divider(
          indent: 15, // empty space to the leading edge of divider.
          endIndent: 15, // empty space to the trailing edge of the divider.
          height: 15, // The divider's height extent.
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPerson()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 148, 152, 206),
        child: const Icon(Icons.add),
      ),
    );
  }
}
