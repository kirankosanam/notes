import 'package:flutter/material.dart';
import 'package:notifier/widgets/notes_preview.dart';
import 'OldNotesEditingScreen.dart';
import 'package:adobe_xd/page_link.dart';
import 'NewNotesWritingScreen.dart';
import 'NewRemainderScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0fffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(30.0, 50.0),
            child: Text(
              'Notes',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 50,
                color: const Color(0xffffc400),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 520.0),
            child: Text(
              'Remainders',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 50,
                color: const Color(0xffffc400),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          // Notes Row
          Transform.translate(
            offset: Offset(0.0, 140.0),
            child: Container(
              height: 300.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 70.0,
                  ),
                  NotesPreview(notesHeader: "Header", notesBody: "Text Body",),
                  NotesPreview(notesHeader: "Header", notesBody: "Text Body",),
                  NotesPreview(notesHeader: "Header", notesBody: "Text Body",),
                ],
              ),
            ),
          ),

          // Remainders Row
          Transform.translate(
            offset: Offset(0.0, 620.0),
            child: Container(
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 70.0,
                  ),
                  NotesPreview(notesHeader: "Remainder", notesBody: "Text Body",),
                  NotesPreview(notesHeader: "Remainder", notesBody: "Text Body",),
                  NotesPreview(notesHeader: "Remainder", notesBody: "Text Body",),

                ],
              ),
            ),
          ),

          // Add new Notes
          Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * 0.9, MediaQuery.of(context).size.height * 0.05),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => NewNotesWritingScreen(),
                ),
              ],
              child: Text(
                '+',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 50,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          // Add new Remainder
          Transform.translate(
            offset: Offset(MediaQuery.of(context).size.width * 0.9 , MediaQuery.of(context).size.height*0.55),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => NewRemainderScreen(),
                ),
              ],
              child: Text(
                '+',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 50,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
