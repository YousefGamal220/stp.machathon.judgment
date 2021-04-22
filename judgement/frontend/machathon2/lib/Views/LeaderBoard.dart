import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Machathon2.0 Leaderboard",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "OriginalSurfer",
                  fontSize: 40),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Top Score",
                          style:
                              TextStyle(fontSize: 35, fontFamily: "Trajan Pro"),
                        ),
                        Text(
                          "40",
                          style:
                              TextStyle(fontSize: 50, fontFamily: "Trajan Pro"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "No. Judgments",
                          style:
                              TextStyle(fontSize: 35, fontFamily: "Trajan Pro"),
                        ),
                        Text(
                          "30",
                          style:
                              TextStyle(fontSize: 50, fontFamily: "Trajan Pro"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Min Infrence",
                          style:
                              TextStyle(fontSize: 35, fontFamily: "Trajan Pro"),
                        ),
                        Text(
                          "2ms",
                          style:
                              TextStyle(fontSize: 50, fontFamily: "Trajan Pro"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(itemCount: 20, itemBuilder: _leaderCard))
        ],
      ),
    );
  }

  Widget _leaderCard(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Text(
            "${index + 1}",
            style: TextStyle(fontFamily: "Trajan Pro", fontSize: 35),
          ),
          title: Text(
            "Team Name",
            style: TextStyle(fontFamily: "Trajan Pro", fontSize: 35),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Max Score: 40",
                style: TextStyle(fontFamily: "Trajan Pro"),
              ),
              Text(
                "Inference Time: 2ms",
                style: TextStyle(fontFamily: "Trajan Pro"),
              ),
              Text(
                "Submission Date: 21:30:38",
                style: TextStyle(fontFamily: "Trajan Pro"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
