import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

class Codey extends StatefulWidget {
  Codey({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Codey createState() => new _Codey();
}

class _Codey extends State<Codey> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Color(0xFF1D3FFC)),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            SizedBox(width: 17,),
            new Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new TextField(
                    textInputAction: TextInputAction.send,
                    textCapitalization: TextCapitalization.sentences,
                    autofocus: true,
                    cursorColor: Color(0xFF1D3FFC),
                    controller: _textController,
                    style: TextStyle(fontSize: 18.0),
                    autocorrect: false,
                    onSubmitted: _handleSubmitted,
                    decoration:
                        new InputDecoration.collapsed(hintText: "Type Something", hintStyle: TextStyle(fontSize: 18.0)),
                  ),
                ],
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(right: 0.0, top: 4.0, bottom: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send, color: Color(0xFF1D3FFC),size: 26.0,),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void Response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/credentials.json")
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = new ChatMessage(
      text: response.getMessage() ??
          new CardDialogflow(response.getListMessage()[0]).title,
      name: "Codey",
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      name: "You",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: new Text("Support (Beta)", style: TextStyle(color: Colors.black),),
        ),
        body: new Column(children: <Widget>[
          new Flexible(
              child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          )),
          new Divider(height: 5.0),
          new Container(
            decoration: new BoxDecoration(color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ]),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(left: 7.0 , right: 7.0),
        child: Icon(Icons.bubble_chart, size: 46.0,),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellowAccent, Colors.lightGreenAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12.0)],
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12.0)],
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14.0),),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0, right: 7.0),
        child: new CircleAvatar(
            backgroundImage: AssetImage('images/codey.png'),),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}