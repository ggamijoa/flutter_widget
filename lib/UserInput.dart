import 'package:flutter/material.dart';

class UserInputWidget extends StatefulWidget {
  const UserInputWidget({super.key});

  @override
  State<UserInputWidget> createState() => _UserInputWidgetState();
}

class _UserInputWidgetState extends State<UserInputWidget> {
  final _textCont = TextEditingController() ;
  String userPost = '' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(userPost,style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
            TextField(
              controller: _textCont,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    _textCont.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      userPost = '' ;
                    });
                  },
                  child: Text('Clear',style: TextStyle(fontSize: 20,color: Colors.white),),
                  color: Colors.blueGrey,
                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      userPost = userPost + _textCont.text + '\n' ;
                      _textCont.clear() ;
                    });
                  },
                  child: Text('POST',style: TextStyle(fontSize: 20,color: Colors.white),),
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
