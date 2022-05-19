import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nae_ra/model/raffle_model.dart';

class RafCard extends StatelessWidget {
  const RafCard({Key? key, required this.rm, required this.onTap}) : super(key: key);

  final RaffleModel rm;
  final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [Image.network(rm.img), Text(rm.content)],
      ),
    );
  }
}
