import 'package:flutter/material.dart';
import 'converter.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _selectpage = 1 ;
  final _pageOptions =[Calculator(),Converter()];

  Widget numberButton(String btnText, Color btnColor, Color txtColor)
  {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          shape: CircleBorder(),
          primary: btnColor),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(centerTitle: true,
        title: Text("Calculator", style: TextStyle(fontSize: 25, color: Colors.black),),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 5),

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),

                child: Text("0", textAlign: TextAlign.left, style: TextStyle(color: Colors.cyan, fontSize: 80),
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("C", Colors.brown, Colors.white),
                numberButton("+/-", Colors.brown, Colors.white),
                numberButton("%", Colors.brown,Colors.white),
                numberButton("/", Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("7", Colors.brown, Colors.white),
                numberButton("8", Colors.brown, Colors.white),
                numberButton("9", Colors.brown, Colors.white),
                numberButton("x", Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("4", Colors.brown, Colors.white),
                numberButton("5", Colors.brown, Colors.white),
                numberButton("6", Colors.brown, Colors.white),
                numberButton("-", Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("1", Colors.brown, Colors.white),
                numberButton("2", Colors.brown, Colors.white),
                numberButton("3", Colors.brown, Colors.white),
                numberButton("+", Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                  primary: (Colors.brown),
                ), child: Padding(padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),),
                ),
                numberButton(".", Colors.brown, Colors.white),
                numberButton("=", Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
          ],

        ),
      ),
    bottomNavigationBar: BottomNavigationBar(currentIndex: _selectpage,onTap: (int index){
      setState(() {
        _selectpage = index;
      });
    }, items: [BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),BottomNavigationBarItem(label: "Converter", icon: Icon(Icons.timer))],),
    );
  }
}
