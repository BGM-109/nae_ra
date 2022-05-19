import 'package:flutter/material.dart';
import 'package:nae_ra/viewmodel/home_viewmodel.dart';
import 'package:nae_ra/widget/raf_card.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("내일의라플"),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemCount: vm.raffleList.length,
        itemBuilder: (BuildContext context, int index) {
          return RafCard(rm: vm.raffleList[index]);
        },
      ),
    );
  }
}
