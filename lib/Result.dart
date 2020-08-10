import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
class Result extends StatelessWidget {
  Result({this.inter , this.bmi_result , this.resultText});

  String resultText;
  String inter;
  String bmi_result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI RESULT")),
      ),
     body: Column(
       children: <Widget>[
         Container(
           height: 500.0,
           width: double.infinity,
           margin: EdgeInsets.all(10.0),
           decoration: BoxDecoration(
               color: Color(0xFF1d1e33), borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  resultText,
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(100),
                  child: Text(
                    bmi_result,
                    textAlign: TextAlign.center,
                    
                    style: TextStyle(
                      fontSize: 60.0,
                    ),
                  ),
                ),
                Text(
                  inter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
         ),
         Ractanglebtn(
           onpress: (){
             Navigator.push(context , MaterialPageRoute(builder: (context){
               return InputPage();
             }));

           },
           label: 'Re-Calculate',
         )
       ],
     ),

    );
  }
}
