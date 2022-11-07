import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:getwidget/getwidget.dart';

class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 750.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor("#359DD9"), HexColor("#013A67")])),
        child: SizedBox(
          height: 300.0,
          child: Row(
            children: [
              const Text(
                "eBola",
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(),
              const Text("Live (0) ", style: TextStyle(color: Colors.white)),
              GFToggle(
                value: true,
                type: GFToggleType.custom,
                onChanged: (bool? value) {
                  if (value==false) {
                    return;
                  }
                }
              )
            ],
          ),
        ));
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xff995588)
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(0, -50) & const Size(30, 10), paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
