import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
        actions:[ 
            IconButton(onPressed: (){
              setState(() {
                counterClicks = 0;
              });
            }, icon: Icon(Icons.replay_outlined))
          ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${counterClicks > 0 ? 'Clicks' : 'Click' }"),
            Text("$counterClicks", style: TextStyle(fontSize: 160, fontWeight: FontWeight.normal),)
            
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
          setState(() {
            counterClicks++;  
          });
      },child: Icon(Icons.plus_one),),
      SizedBox(height: 10,),
      FloatingActionButton(onPressed: (){
          setState(() {

            if(counterClicks == 0){
                                           counterClicks = 0;   
            }else{
                                        counterClicks--;  
            }

          });
      },child: Icon(Icons.exposure_minus_1),),
      SizedBox(height: 10,),
      FabButton(icon:Icons.exposure_zero,onPressed: () {
        setState(() {
          counterClicks = 0;
        });
      },),
        ],
      )
    );
  }
}

//BTN GRAL
class FabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;


  const FabButton({
    super.key, 
    required this.icon,
    required this.onPressed
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),);
  }
}