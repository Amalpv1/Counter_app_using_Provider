import 'package:flutter/cupertino.dart';

class ValueChange extends ChangeNotifier{
  int x = 0;

  void addValue(int ){
    x++;
    notifyListeners();
  }
  void reduceValue(){
    x--;
    notifyListeners();
  }
}