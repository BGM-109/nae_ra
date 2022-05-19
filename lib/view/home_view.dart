import 'package:flutter/material.dart';
import 'package:nae_ra/view/detail_view.dart';
import 'package:nae_ra/viewmodel/home_viewmodel.dart';
import 'package:nae_ra/widget/raf_card.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  bool _showBackToTopButton = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    return Scaffold(
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
      appBar: AppBar(
        title: const Text("내일의라플"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: vm.isLoad
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "${vm.raffleList.length}개의 응모개수",
                    style: const TextStyle(
                        fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.5),
                    itemCount: vm.raffleList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RafCard(
                        rm: vm.raffleList[index],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailView(uri: vm.raffleList[index].link),
                              ));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
