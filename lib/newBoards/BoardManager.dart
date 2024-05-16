import 'package:warships_mobile/newBoards/Board.dart';

import '../newBoards/BoardWidget.dart';
import 'Field.dart';

abstract class BoardManager{
  Board board=Board();
  bool disabled=false;
  Function changeState = () {};
  final int size;
  BoardWidget widget= BoardWidget(size: 0, getFields: (){},);
  List<Field> getFields();
  BoardManager (this.size){
    widget=BoardWidget(size: size, getFields: getFields);
  }
  void setChangeState(Function callback) {
    changeState = callback;
  }
  void update(){
    widget=BoardWidget(size: size, getFields: getFields);
  }
}