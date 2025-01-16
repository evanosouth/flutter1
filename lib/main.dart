import 'package:flutter/material.dart';
import 'package:myapp/listViewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: mainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class mainScreen extends StatelessWidget {
  // const mainScreen({Key? key}) : super(key: key);


  final String pesan = 'Haii dari main screen';
  final String pesan2 = 'Haii dari main screen baris 2';

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
        title: const Text('Home Screen',
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
      body: 

      // Penggunaan center
      // Center(
      //   child: Text('Hello world'),
      // ),

      // Penggunaan Container
      Row(
        children: [
          Container (
            child: Text('Hi', style: TextStyle(fontSize: 40),),
            // color: Colors.blue,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(
                color: Colors.black,
                offset: Offset(5, 5),
                blurRadius: 10
              )],
              border: Border.all(color: Colors.green, width: 5)
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: (){
                //Ini tanpa Data
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //   return listViewScreen();
                  // }));

                //Ini dengan Data
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => listViewScreen(pesan, pesan2)),
                );
              }, 
              child: Text(
                'List View Screen'
              ),
            ),
          ),
        ],
      ),

    
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add, 
          color: Colors.black,
        ),
      ),
    );
  }
}