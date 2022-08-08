import 'package:flutter/material.dart';

void main() {
  runApp(const Monstereyes());
}

class Monstereyes extends StatelessWidget {
  const Monstereyes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scafford 사용해서 top, body, bottom 구분 생성하기
        home: Scaffold(
          appBar: AppBar(
            title: Text('앱임'), centerTitle: false,
          ),
          body: Text('안녕'),
            bottomNavigationBar: BottomAppBar(
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.phone),
                      Icon(Icons.message),
                      Icon(Icons.contact_page),
                    ],
                  ),
                ),
              ),
          )
    );

  }
}
