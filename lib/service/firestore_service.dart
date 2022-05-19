import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nae_ra/model/raffle_model.dart';

class FirestoreService {
  static Future<List<RaffleModel>> readCollectionRaffles() async {
    List<RaffleModel> result = [];
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db.collection("raffles").get().then((event) {
      for (var doc in event.docs) {
        Map<String, dynamic> data = doc.data();
        result.add(RaffleModel.fromJson(data));
      }
    });
    return result;
  }
}
