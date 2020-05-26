/////////////////////////////////////////////////////////////////////////////// Text Input //////////////////////////////////////////////////////////////////////
// #TextInput
class Textinput extends StatefulWidget{
  _Textinput createState() => _Textinput();
}
class _Textinput extends State<Textinput>{
  var _name;
  final nameCon = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(15),
      child: new Column(
        children: <Widget>[
          TextField(
            controller: nameCon,
            maxLength: 20,
            autofocus: true,
            cursorColor: Colors.amber,
            cursorWidth: 5.0,
            style: TextStyle(
              height: 1.0,
            ),
            decoration: InputDecoration(
              hintText: "Enter Your name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.amber,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                _name = nameCon.text;
              });
            },
            child: Text("Set"),),
        ],


      ),
    );
  }
}