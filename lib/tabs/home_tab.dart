
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class HomeTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Widget _buildBodyBack() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 211, 118, 125),
            Color.fromARGB(255, 253, 181, 100)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );


    return Stack(
    children: <Widget>[
      _buildBodyBack(),
      CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Novidades') ,
              centerTitle: true,
              ),
          ),
                FutureBuilder<QuerySnapshot>(
                  future: Firebase.instance
                  .collection("home").orderBy("pos").getDocuments(),

                 builder: (context, snapshot){
                   if(!snapshot.hasData)
                    return SliverToBoxAdapter(
                      child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                    );
                    else
                      print(snapshot.data.documents.length);
                     return SliverToBoxAdapter(
                      child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: Container()
                    ),
                    );
                 },
  

                  )
                      
                  ],
                )
              ],
              );
          }
          }
          
          