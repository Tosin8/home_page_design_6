import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart'; 

void main() {
  runApp(const MaterialApp(title: 'Home Design Design', home: MyCustomUi()));
}

class MyCustomUi extends StatefulWidget {
  const MyCustomUi({Key? key}) : super(key: key);

  @override
  State<MyCustomUi> createState() => _MyCustomUiState();
}

class _MyCustomUiState extends State<MyCustomUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0x0ff8f9fb),
          appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              elevation: 20,
              shadowColor: const Color(0xffF0F0F0).withOpacity(.4),
              backgroundColor: Colors.white, 
              title: Text('Your App\'s Nmae', 
              textScaleFactor: 1.12,
              style: TextStyle(color: Colors.black.withOpacity(.7), 
              fontWeight: FontWeight.w700, 
              )), 
              actions: [
                IconButton(
                  color: Colors.black.withOpacity(.7), 
                  tooltip: 'Settings',
                  enableFeedback: true, 
                  icon: Icon(
                    CupertinoIcons.gear_alt_fill, 
                  color: Colors.black.withOpacity(.7)),
                  onPressed: (){
                  HapticFeedback.lightImpact();
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                  },
                ), 
              ], 
              bottom: TabBar(
                indicatorColor: Colors.black.withOpacity(.8),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black.withOpacity(.5), 

              ),
              unselectedLabelColor: Colors.black.withOpacity(.4),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black.withOpacity(.8),
              tabs: const [
                Tab(
                  child: Text('Example'),
                  
                )
              ],
                },
                 
                 ))
              ],),
        ))
      
  }
}
