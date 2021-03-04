part of 'pages.dart';

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void updateDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Row(
          children: [
            Dice(
              feedback: updateDice,
              diceNumber: leftDiceNumber,
            ),
            Dice(
              feedback: updateDice,
              diceNumber: rightDiceNumber,
            ),
          ],
        ),
      ),
    );
  }
}
