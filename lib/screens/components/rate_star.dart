import 'package:flutter/material.dart';

class RateStar extends StatelessWidget {
  const RateStar({super.key, required this.rate});

  final int rate;

  @override
  Widget build(BuildContext context) {
    final starList = <int>[0, 0, 0, 0, 0];
    for (var i = 0; i < rate; i++) {
      starList[i] = 1;
    }

    return Row(
      children: starList.map((val) {
        return (val == 1)
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border);
      }).toList(),
    );
  }
}
