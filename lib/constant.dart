import 'package:flutter/material.dart';

class TheConstList extends StatelessWidget {
  const TheConstList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                ),
              )),
    );
  }
}

class TheConstContainer extends StatelessWidget {
  const TheConstContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final dynamic child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
