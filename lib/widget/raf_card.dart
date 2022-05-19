import 'package:flutter/cupertino.dart';
import 'package:nae_ra/model/raffle_model.dart';

class RafCard extends StatelessWidget {
  const RafCard({Key? key, required this.rm}) : super(key: key);

  final RaffleModel rm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(rm.img), Text(rm.content)],
    );
  }
}
