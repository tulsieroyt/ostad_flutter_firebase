import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_firebase/data/models/match_model.dart';
import 'package:ostad_flutter_firebase/ui/match_details_screen.dart';

class FirebaseStudentApp extends StatefulWidget {
  const FirebaseStudentApp({super.key});

  @override
  State<FirebaseStudentApp> createState() => _FirebaseStudentAppState();
}

class _FirebaseStudentAppState extends State<FirebaseStudentApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Football App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: StreamBuilder<List<Match>>(
          stream: readMatch(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Something wrong'),
              );
            }
            if (snapshot.hasData) {
              final match = snapshot.data!;
              return ListView(
                children: match.map(buildMatch).toList(),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Stream<List<Match>> readMatch() => FirebaseFirestore.instance
      .collection('football_ostad')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Match.fromJson(doc.data())).toList());

  Widget buildMatch(Match match) => Card(
        child: ListTile(
          title: Text(match.matchName),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MatchDetailsScreen(match: match),
              ),
            );
          },
        ),
      );
}
