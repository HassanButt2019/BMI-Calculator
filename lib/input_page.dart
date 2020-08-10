import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'Result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Calculator.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double weight = 0.5;
  double age = 1;
  int height_c = 180;
  //0 = male 1 = female
  Color malec = Color(0xFF111328);
  Color femalec =Color(0xFF111328);
  void updatecolor(int gender)
  {
      if(gender == 0)
        {
          if(malec == Color(0xFF111328))
            {
              malec= Color(0xff1d1e33);
            }else{
            malec =  Color(0xFF111328);
          }
        }
      if(gender == 1)
      {
        if(femalec == Color(0xFF111328))
        {
          femalec= Color(0xff1d1e33);
        }else{
          femalec =  Color(0xFF111328);
        }
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(0);
                      });
                    },
                    child: ReusableCard(
                      colour: malec,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xff8d8e98),
                            ),
                          )
                        ],
                      ),
                      width: 170.0,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(1);
                      });
                    },
                    child: ReusableCard(
                      colour:  femalec,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xff8d8e98),
                            ),
                          )
                        ],
                      ),
                      width: 170.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF1d1e33),
              width: 470.0,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Height',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff8d8e98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height_c.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        'cm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height_c.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xffeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    onChanged: (double newvalue){
                        setState(() {
                          height_c = newvalue.toInt();
                        });
                    },


                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1d1e33),
                    width: 170.0,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff8d8e98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 65.0,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundBtn(
                                icon: FontAwesomeIcons.minus,
                                onpress: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundBtn(
                                icon: FontAwesomeIcons.plus,
                                onpress: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1d1e33),
                    width: 170.0,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff8d8e98),
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 65.0,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundBtn(
                                icon: FontAwesomeIcons.minus,
                                onpress: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundBtn(
                                icon: FontAwesomeIcons.plus,
                                onpress:(){
                                  setState(() {
                                    age++;
                                  });
                                },

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Ractanglebtn(
              onpress: (){
                Calculator calculator = Calculator(height: height_c , weight: weight);
                Navigator.push(context ,
                    MaterialPageRoute(
                        builder: (context){
                  return Result(
                    inter: calculator.Intr(),
                    bmi_result: calculator.BMI(),
                    resultText:calculator.Result(),
                  );

                }));

              },
            label: 'Calculate',
          ),
        ],
      ),
    );
  }
}

class RoundBtn extends StatelessWidget {
  RoundBtn({this.icon , this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:onpress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.9,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
class Ractanglebtn extends StatelessWidget {
  Ractanglebtn({this.onpress , this.label});
  final Function onpress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: 56.9,
      ),
      hoverColor: Colors.red,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 25.0,

        ),
      ),
      onPressed: onpress,
      fillColor: Colors.pinkAccent,

    );
  }
}
