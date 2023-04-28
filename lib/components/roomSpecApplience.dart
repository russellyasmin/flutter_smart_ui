import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RoomApplience extends StatelessWidget {
  final String label;
  final String imagepath;
  final double imgwidth;
  final double imgHgt;

  const RoomApplience(
      {super.key,
      required this.label,
      required this.imagepath,
      required this.imgwidth,
      required this.imgHgt});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.grey.shade500, width: 1.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.width * imgwidth,
                  width: MediaQuery.of(context).size.width * imgHgt,
                  child: Image.asset(
                    imagepath,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
