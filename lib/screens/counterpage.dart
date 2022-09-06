import 'package:countigapp/screens/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ui changed');
    return Scaffold(
      appBar: AppBar(
        title:Text('counterAPP'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<ValueChange>(
            
            builder: (context, value, child) {
               print('consumer chnged');
              return Text('${value.x}');
             
            
            }
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              ElevatedButton(onPressed: (){
                Provider.of<ValueChange>(context,listen: false).addValue(int);
              }, child: Icon(Icons.add)),
              ElevatedButton(onPressed: (){
                 Provider.of<ValueChange>(context,listen: false).reduceValue();
              }, child: Icon(Icons.remove)),
            ],
          )

        ],
      ),
    );
  }
}