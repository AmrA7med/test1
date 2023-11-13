
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Reusable_Cart.dart';
class result extends StatelessWidget {
  final String? BmiResult ;
  final String? BmiText ;
  final String? BmiAdvise ;
  const result({this.BmiResult,this.BmiText,this.BmiAdvise});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'Your Result',
        ),
      ),
      body:
      Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
              style: TextStyle(color: Colors.white,
                fontSize: 25,

              ),
            ),
          )),
          Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: ReusableCard(
                  Child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(BmiText!,
                        style: TextStyle(color: Colors.green,
                        fontSize: 25,
                        ),
                      ),
                      Text(BmiResult!,
    style: TextStyle(
    color: Colors.white,
    fontSize: 90,
    ),
                      ),
                      Text(BmiAdvise!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      ),
                    ],

                  ),

                  colour: Color(0xff1D1E33),

                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),


              width: double.infinity,
              child: Center(
                child: Text('Recalculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              color: Color(0xffEB1555),
            ),
          ),
        ],

      ),


    );
  }
}
