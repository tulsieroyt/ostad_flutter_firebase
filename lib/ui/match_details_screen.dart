import 'package:flutter/material.dart';
import 'package:ostad_flutter_firebase/data/models/match_model.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({super.key, required this.match});

  final Match match;

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.match.matchName,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(widget.match.numberOfGoals,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  Text('Time:${widget.match.runningTime} ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('Total Time:${widget.match.totalTime}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
