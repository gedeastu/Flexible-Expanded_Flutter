import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlexibleExpanded(),
    );
  }
}
class FlexibleExpanded extends StatefulWidget {
  const FlexibleExpanded({super.key});

  @override
  State<FlexibleExpanded> createState() => _FlexibleExpandedState();
}

class _FlexibleExpandedState extends State<FlexibleExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible vs Expanded",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: 
      Container(
        height: double.infinity,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Flexible(
          fit: FlexFit.tight,
          flex:150,
          child: Row(
            children: [
              Container(
                height: 200.0,
                color: Colors.amber,
                child: Text("Text 1"),
              ),
              Container(
                height: 200.0,
                color: Colors.amber,
                child: Text("Text 1"),
              ),
              Container(
                height: 200.0,
                color: Colors.amber,
                child: Text("Text 1"),
              ),
              Container(
                height: 200.0,
                color: Colors.amber,
                child: Text("Text 1"),
              )
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 100,
          child: Container(
            height: 200.0,
            color: Colors.red,
            child: Text("Text 2"),
          ),
        ),
        Expanded(
          //fit: FlexFit.tight,
          flex: 50,
          child: Container(
            height: 200.0,
            color: Colors.blueGrey,
            child: Text("Text 3"),
          ),
        )
      ]),
      )
    );
  }
}