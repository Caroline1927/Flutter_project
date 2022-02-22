import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/appBar.dart';
import 'package:project_verkholomova/screens/main_screen.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/game_screen04.dart';
import 'package:project_verkholomova/range.dart';

import 'game_screen02.dart';

String className4='4';
int show5=5;

class GameScreen03 extends StatefulWidget {
  const GameScreen03({Key? key}) : super(key: key);

  @override
  State<GameScreen03> createState() => _GameScreen03State();
}
class _GameScreen03State extends State<GameScreen03> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Container(
            color: Colors.blue[50],
            width: double.infinity,
            height: double.infinity,
            child:
            Center(
              child: Column(
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                        width: 400,
                        height: 10,
                        child: MyStatefulWidget()),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                        children:[
                          Text("Choose a color which is used for the word", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text("Purple", style: TextStyle(color: Colors.orange, fontSize: 40, fontFamily: 'Relay'),),
                          ),
                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 350,left:20),
                                child: MaterialButton(onPressed: () {
                                  count--;
                                  changeVisibility(count);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyAppBar()),
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  const GameScreen03()),
                                  );
                                  print("hidden");

                                  if(count==0){
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: Text('You should try once more!',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay')),
                                        content:
                                        Container(
                                            width: 260.0,
                                            height: 230.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: const Color(0xFFFFFF),
                                              borderRadius: new BorderRadius.all(Radius.circular(32.0)),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                    width:150,
                                                    height: 150,
                                                    child: Image(image: NetworkImage("https://i.pinimg.com/originals/63/4c/e0/634ce0008c346cdf855147d90f4e7c4a.jpg"))),
                                                Text('Level $number is not passed',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                                              ],
                                            )),

                                        actions: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 45.0),
                                            child: TextButton(
                                              onPressed: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const MainScreen()),
                                              ),
                                              child: const Text('Get back to menu',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 30.0),
                                            child: TextButton(
                                              onPressed: () {

                                                count=3;
                                                isvisible=true;
                                                isvisible1=true;

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const GameScreen03()),
                                                );

                                              },

                                              child: const Text('Try again',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }, child: Text("Blue",style: TextStyle(color: Colors.purple, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 350,left: 20),
                                child: MaterialButton(onPressed: () {
                                  point+=10;
                                  number++;
                                  className4='Done';
                                  show4=0;
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: Text('You are right!',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay')),
                                      content:
                                      Container(
                                          width: 260.0,
                                          height: 230.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: const Color(0xFFFFFF),
                                            borderRadius: new BorderRadius.all(Radius.circular(32.0)),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  width:150,
                                                  height: 150,
                                                  child: Image(image: NetworkImage("https://media.istockphoto.com/vectors/celebrate-party-poppers-with-confetti-for-festive-congratulations-and-vector-id1171304057?k=20&m=1171304057&s=170667a&w=0&h=4NKZCqi2gtZ31TS9aJNA3SAqkAJU4-x6eBesk0Lt3EE="))),
                                              Text('Level ${number-1} passed',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                                            ],
                                          )),

                                      actions: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 35.0),
                                          child: TextButton(
                                            onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const MainScreen()),
                                            ),
                                            child: const Text('Get back to menu',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20.0),
                                          child: TextButton(
                                            onPressed: () {

                                              count=3;
                                              isvisible=true;
                                              isvisible1=true;
                                              show5=5;
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const GameScreen04()),
                                              );

                                            },

                                            child: const Text('Next level',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }, child: Text("Orange",style: TextStyle(color: Colors.green, fontSize: 30, fontFamily: 'Relay'))),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 350,left:20),
                                child: MaterialButton(onPressed: () {
                                  count--;
                                  changeVisibility(count);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyAppBar()),
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  const GameScreen03()),
                                  );
                                  print("hidden");

                                  if(count==0){
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: Text('You should try once more!',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay')),
                                        content:
                                        Container(
                                            width: 260.0,
                                            height: 230.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: const Color(0xFFFFFF),
                                              borderRadius: new BorderRadius.all(Radius.circular(32.0)),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                    width:150,
                                                    height: 150,
                                                    child: Image(image: NetworkImage("https://i.pinimg.com/originals/63/4c/e0/634ce0008c346cdf855147d90f4e7c4a.jpg"))),
                                                Text('Level $number is not passed',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                                              ],
                                            )),

                                        actions: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 45.0),
                                            child: TextButton(
                                              onPressed: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const MainScreen()),
                                              ),
                                              child: const Text('Get back to menu',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 30.0),
                                            child: TextButton(
                                              onPressed: () {

                                                count=3;
                                                isvisible=true;
                                                isvisible1=true;

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const GameScreen03()),
                                                );

                                              },

                                              child: const Text('Try again',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }, child: Text("Purple",style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                            ],
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }}