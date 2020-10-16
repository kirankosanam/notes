import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'HomeScreen.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OldNotesEditingScreen extends StatelessWidget {
  OldNotesEditingScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(30.0, 60.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeScreen(),
                ),
              ],
              child: SizedBox(
                width: 19.0,
                height: 33.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 16.6, 16.0, 16.0),
                      size: Size(18.6, 32.6),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_42vg9m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.4, 0.0, 18.2, 18.2),
                      size: Size(18.6, 32.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_la6i0n,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 130.0),
            child: SizedBox(
              width: 645.0,
              height: 894.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 311.0, 30.0),
                    size: Size(645.0, 894.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Title of the notes here',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 72.0, 645.0, 822.0),
                    size: Size(645.0, 894.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'And the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here \n\nAnd the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here \n\nAnd the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here \n\nAnd the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here \n\nAnd the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here \n\nAnd the actual notes goes here And the actual \nnotes goes here And the actual notes goes here \nAnd the actual notes goes here ',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_42vg9m =
    '<svg viewBox="30.5 56.5 16.0 16.0" ><path transform="translate(30.5, 56.5)" d="M 0 0 L 16 16" fill="none" stroke="#ffba00" stroke-width="7" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_la6i0n =
    '<svg viewBox="30.9 39.9 18.2 18.2" ><path transform="matrix(0.241922, -0.970296, 0.970296, 0.241922, 30.91, 54.46)" d="M 0 0 L 15 15" fill="none" stroke="#ffba00" stroke-width="7" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
