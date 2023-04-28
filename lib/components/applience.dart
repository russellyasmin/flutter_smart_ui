import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/placeholder.dart';

class Appliance extends StatelessWidget {
  final Color colors;
  final IconData icon;
  final String label;

  const Appliance(
      {super.key,
      required this.colors,
      required this.icon,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: colors,
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
