import 'package:flutter/material.dart';



class Result extends StatelessWidget {
 final int resultScore;
 final VoidCallback resetHandler;
 Result(this.resultScore, this.resetHandler);

 //dart feature, but not function
 String get resultPhrase {
   var resultText = 'You did it!';
   if(resultScore<= 8){
     resultText='You are awesome and innocent!';
   }else if(resultScore <= 12){
     resultText='Pretty likeable!';
   }else if(resultScore <= 16){
     resultText='You are ... Strange';
   }else {
     resultText='You are so bad!';
   }
   return resultText;
 }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget> [
          Text(
            resultPhrase ,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
          )
        ],
      ),
    );
  }
}
