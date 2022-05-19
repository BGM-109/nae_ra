import 'package:flutter/material.dart';
import 'package:nae_ra/model/raffle_model.dart';
import 'package:nae_ra/service/firestore_service.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    getRaffles();
  }

  List<RaffleModel> _raffleList = [];

  List<RaffleModel> get raffleList => _raffleList;

  Future<void> getRaffles() async {
    _raffleList = await FirestoreService.readCollectionRaffles();
  }
}
