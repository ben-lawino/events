import 'package:events/models/event_detail.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventScreen extends StatelessWidget {

  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
      ),
      body: EventList(),
    );
  }
}

class EventList extends StatefulWidget {
  EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
  final FirebaseFirestore db = FirebaseFirestore.instance;
  List <EventDetail> details = [];

  Future<List<EventDetail>> getDetailsList() async {
    var data = await db.collection('event_details').get();

    details = data.docs.map((document) {
      EventDetail detail = EventDetail.fromMap(document.data());
      detail.id = document.id;
      return detail;
    }).toList();

    return details;
  }

}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
