part of 'widgets.dart';

class Dice extends StatelessWidget {
  final int diceNumber;
  final Function feedback;
  const Dice({
    this.diceNumber,
    this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: GestureDetector(
          onTap: feedback,
          child: Image.asset(
            'assets/dice$diceNumber.png',
          ),
        ),
      ),
    );
  }
}
