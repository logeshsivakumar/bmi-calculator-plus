import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@ required this.interpretation,@ required this.bmiResults,@ required this.resultText });

  final String bmiResults;
  final String resultText;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Results',style: kTitleTextStyle,textAlign:TextAlign.center,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour:kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                  style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )

                ],
              ),

            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle:'RE-CALCULATE')
        ],
      )
    );
  }
}
