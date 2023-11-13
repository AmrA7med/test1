import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import 'Card_Data.dart';
import 'Custom_button.dart';
import 'Reusable_Cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget Box() {
    return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xff111328),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  color: Color(0xff111328),
                ),
              ),
            ],
          ),
        ));
  }

  // 1 = male ,2 = female
//   Color PickedColor = Color(0xff111328);
//   PickColour (int gender){
// if(gender == 1){
//
// }
//
//   }

  /////  Bmi equation
  //// bmi = weight / pow(Height/100,2);
  double? bmi;

  double BmiResult(int weight, int height) {
    bmi = weight / pow(height / 100, 2);
    return bmi!;
  }

  String bodyState() {
    if (bmi! <= 18) {
      return 'Under Weight';
    }
    else if (bmi! > 25) {
      return 'Over Weight';
    }
    else {
      return 'Normal';
    }
  }

  String BmiAdvise() {
    if (bmi! <= 18) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
    else if (bmi! > 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else {
      return 'You have a normal body weight. Good job!';
    }
  }


  int Age = 20 ;
  int Height = 180 ;
  /////////////////////////////intial value 60
  int Weight = 60 ;
  bool Maleflage = false ;
  bool Femaleflage = false ;
  static const textlabelstyle = TextStyle(color: Color(0xff8D8E98), fontSize: 20);
  static const numberlabelstyle = TextStyle(color: Colors.white, fontSize: 35);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
setState(() {
  Maleflage = true ;
  Femaleflage = false ;

});
                    },
                    child: ReusableCard(
                      Child: CardData(
                        Icon:  FontAwesomeIcons.mars,
                        text: 'Male',
                      ),

                      colour: Maleflage == true ?Color(0xff1D1E33):Color(0xff111328),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Femaleflage = true ;
                        Maleflage = false ;
                      });

                    },
                    child: ReusableCard(
                      Child: CardData(
    Icon: FontAwesomeIcons.venus,
    text: 'Female',
    ),
                      colour: Femaleflage == true ?Color(0xff1D1E33):Color(0xff111328),
                    ),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ReusableCard(
                  Child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',
                        style: TextStyle(color: Color(0xff8D8E98), fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(Height.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          Text('cm',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Slider(
                          value: Height.toDouble(),
                          min: 120.0,
                          max: 200.0,
                          activeColor: Color(0xffEB1555),
                       inactiveColor: Color(0xff8D8E98),
                        //  inactiveColor: Colors.black,
                          onChanged: (newValue){
                        setState(() {
                          Height = newValue.round() ;
                        });
                          }
                      ),
                    ],
                  ), colour: Color(0xff111328)),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      Child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: textlabelstyle,
                          ),
                          Text(Weight.toString(),
                            style:numberlabelstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: (){
                                 setState(() {
                                   Weight ++ ;
                                 });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: (){
                                  setState(() {
                                    Weight -- ;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ), colour: Color(0xff111328)),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ReusableCard(
                      Child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                            style: textlabelstyle,

                          ),
                          Text(Age.toString(),
                            style: numberlabelstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: (){
                                  setState(() {
                                    Age ++ ;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: (){
                                  setState(() {
                                    Age -- ;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: Color(0xff111328)),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              String x = BmiResult(Weight, Height).toStringAsFixed(1);
              print('this is BmiResult: $x');
              String bodystate = bodyState();
              print(bodystate);
            String Bmiadvise =  BmiAdvise();
              Navigator.push(context, MaterialPageRoute(builder: (context) => result(BmiResult: x,BmiText: bodystate,BmiAdvise: Bmiadvise),));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),


              width: double.infinity,
              child: Center(
                child: Text('calculate',
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



