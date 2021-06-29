import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facilita_sus/modules/home/widgets/app_bar_widget.dart';
import 'package:facilita_sus/modules/seach/widgets/result_widget.dart';
import 'package:facilita_sus/shared/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({Key? key}) : super(key: key);

  @override
  _SeachPageState createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage> {
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> ubsStreams =
        FirebaseFirestore.instance.collection('ubs').snapshots();

    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: StreamBuilder<QuerySnapshot>(
          stream: ubsStreams,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ResultWidget(ubsName: data['nome'], onTap: () {}),
                );
              }).toList(),
            );
          },
        ),
        bottomNavigationBar: BackButtonWidget(),
      ),
    );
  }
}
