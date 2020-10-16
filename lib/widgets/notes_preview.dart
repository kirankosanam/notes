import 'package:flutter/material.dart';

class NotesPreview extends StatelessWidget {
  const NotesPreview({
    Key key,
    @required this.notesHeader,
    @required this.notesBody,
  }) : super(key: key);

  final String notesHeader;
  final String notesBody;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: 300,
        height: 300.0,
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: const Color(0x01ffffff),
              border: Border.all(color: Colors.pink, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(40.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notesHeader,
                style: TextStyle(color: Colors.yellow, fontSize: 22.0),
              ),
              Text(
                notesBody,
                style: TextStyle(color: Colors.yellowAccent, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
