class Card{
  final String title;
  final String url;
  final String? intake;
  final String? method;
  final String time;

  const Card(this.title, this.url, this.intake, this.method, this.time);
}

List<Card> cards = [
  Card('Water Intake', 'assets/icons/bottle.svg', '20 cups ', 'Drank', 'Last updated 3m'),
  Card('Body Composition', 'assets/icons/skeleton.svg', '' ,'', 'Last updated 3m'),
  Card('Body Measurement', 'assets/icons/measure_skel.svg','' ,'', 'Last updated 3m'),
  Card('Step Counter', 'assets/icons/step.svg', '500 ', 'Total steps', 'Last updated 3m'),

];
