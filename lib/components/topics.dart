import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('topics').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData) return const Text("Loading.....");
        return ListView.builder(
          itemExtent: 80.0,
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context, index) {
            final DocumentSnapshot document = snapshot.data.documents[index];
            return new ListTile(
              title: new Text(document['title'] ?? '<No title retrieved>'),
              subtitle: new Text(document['event']),
            );
          }
        );
      }
    );
  }
}

