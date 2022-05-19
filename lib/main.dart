import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nae_ra/view/home_view.dart';
import 'package:nae_ra/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        )),
  );
}
