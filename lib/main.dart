import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Monstereyes()
      )
  );
}

class  Monstereyes extends StatefulWidget {
  Monstereyes({Key? key}) : super(key: key);

  @override
  State<Monstereyes> createState() => _MonstereyesState();
}

class _MonstereyesState extends State<Monstereyes> {

  // States//
  var total = 3;
  // final growableList = <String>['A', 'B'];
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];
  var inputData = TextEditingController();  // inputData; 사용자가 입력한 데이터를 저장할 변수


  //////////////수정함수/////////////

  addOne() {
    setState((){
      total++;
    });
  }

  addName(inputData) {
    setState((){
      name.add(inputData);
    });
  }
///////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            floatingActionButton: Builder(
              builder: (context){
              return FloatingActionButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                return DialogUI( inputData:inputData, addOne: addOne,  addName: addName);
              });
              },
              );
              }
            ),
            appBar: AppBar(title: Text(total.toString()),),
            body: ListView.builder(
              itemCount: name.length,
              itemBuilder: (c, i) {
                return ListTile( // 연락처 여러개 만들기
                  leading: Image.asset('profile.png', width: 100,),
                  title: Text(name[i]),


                );
              },
            )
        );
  }
}


////////////////////// 커스텀위젯_DialogUI ////////////////

class DialogUI extends StatelessWidget {
   DialogUI({Key? key, this.inputData, this.addOne, this.addName}) : super(key: key);
   final addOne;
   final addName;
   // input 데이터 관리하기
  final inputData;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField( controller: inputData,),
            TextButton(child: Text('완료'), onPressed:(){
              addOne();
              addName(inputData.text);
            }),
            TextButton(child: Text('취소'), onPressed:(){ Navigator.pop(context); })
          ]
        ),
      ),
    );
  }
}







