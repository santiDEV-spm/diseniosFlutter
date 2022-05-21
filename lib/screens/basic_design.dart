import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        //Titulo
        const Title(),
        //Button Section
        const ButtonSection(),
        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: const Text(
              'Deserunt et adipisicing quis reprehenderit et sunt excepteur veniam veniam exercitation. Ullamco labore velit aliqua ut irure eiusmod id id velit irure amet. Ex sint veniam fugiat ut tempor amet. Pariatur nulla exercitation magna ullamco. Et ullamco non officia adipisicing Lorem voluptate sit pariatur. Tempor id veniam culpa duis officia. \n\nMinim culpa ut consequat in quis cillum aliquip laboris elit laborum reprehenderit voluptate. Id amet officia eiusmod mollit officia voluptate sit nostrud. Sit Lorem amet et amet deserunt sit officia duis exercitation aliquip est aliqua cillum.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ItemButton(
          text: 'Call',
          iconData: Icons.call,
        ),
        SizedBox(
          width: 60,
        ),
        ItemButton(
          iconData: Icons.send_rounded,
          text: 'Route',
        ),
        SizedBox(
          width: 60,
        ),
        ItemButton(
          iconData: Icons.share,
          text: 'Share',
        ),
      ],
    );
  }
}

class ItemButton extends StatelessWidget {
  final IconData iconData;
  final String text;

  const ItemButton({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 30,
          color: Colors.blueAccent,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            text,
            style: const TextStyle(color: Colors.blueAccent),
          ),
        )
      ],
    );
  }
}
