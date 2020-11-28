import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Outlands(),
));

class Outlands extends StatefulWidget {
  @override
  _OutlandsState createState() => _OutlandsState();
}

class _OutlandsState extends State<Outlands> {
  List<Widget> ranks = [Text('Soldier',style: TextStyle(color: Colors.green, fontSize: 25.0, letterSpacing: 2.0)),
    Text('Bandit',style:TextStyle(color: Colors.redAccent, fontSize: 25.0, letterSpacing: 2.0)),
    Text('Hero',style:TextStyle(color: Colors.yellow, fontSize: 25.0, letterSpacing: 2.0)),
    Text('Paragon',style:TextStyle(color: Colors.lightBlue, fontSize: 25.0, letterSpacing: 2.0)),
    Text('Predator',style:TextStyle(color: Colors.red, fontSize: 25.0, letterSpacing: 2.0))];
  int rankIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outlands Player Info'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        onPressed: (){
          setState(() {
            if(rankIndex<=3)
            {
              rankIndex++;
            }
            else
            {
              rankIndex=0;
            }
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/general.png'
               ),
                radius: 40.0,
              ),
            ),
            Divider(
              height:60.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.white, fontSize: 15.0, letterSpacing: 2.0,),
              ),
            SizedBox(height:5.0),
            Text(
              'GeneralUsman',
              style: TextStyle(color: Colors.amberAccent[200], fontSize: 25.0, letterSpacing: 2.0),
            ),
            SizedBox(height:20.0),
            Text(
              'RANK',
              style: TextStyle(color: Colors.white, fontSize: 15.0, letterSpacing: 2.0,),
            ),
            SizedBox(height:5.0),
            ranks[rankIndex],
            SizedBox(height:20.0),
            Text(
              'CLAN',
              style: TextStyle(color: Colors.white, fontSize: 15.0, letterSpacing: 2.0,),
            ),
            SizedBox(height:5.0),
            Row(
              children: [
                Text(
                  'FUX',
                  style: TextStyle(color: Colors.cyan, fontSize: 25.0, letterSpacing: 2.0),
                ),
                //Image.asset('assets/fux.png', height:20.0,width:20.0),
                SizedBox(width: 10.0),

                CircleAvatar(backgroundImage: AssetImage('assets/fux.png'), radius: 15.0,),
              ],
            ),
            SizedBox(height:20.0),
            Text(
              'OG',
              style: TextStyle(color: Colors.white, fontSize: 15.0, letterSpacing: 2.0,),
            ),
            SizedBox(height:5.0),
            Text(
              'True',
              style: TextStyle(color: Colors.lime, fontSize: 25.0, letterSpacing: 2.0),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[850],


    );
  }
}


