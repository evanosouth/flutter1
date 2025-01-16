import 'package:flutter/material.dart';


class listViewScreen extends StatelessWidget {

  final String pesan;
  final String pesan2;

  listViewScreen(this.pesan, this.pesan2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          )
        ),
        title: const Text('Second Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              // Logic Here
            }, 
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pesan,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(pesan2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text('Kembali')
            ),
          ],
        ),
      ),
    );
  }
}