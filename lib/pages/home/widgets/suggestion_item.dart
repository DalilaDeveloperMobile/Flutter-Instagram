
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
    child: Row(children: [
    const  CircleAvatar(radius: 18,
      backgroundImage: AssetImage('images/perfil.png'),
      backgroundColor: Colors.transparent,
      ),
      const SizedBox(width: 16),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
        Text('dalila70',
        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        Text('Dalila Custódio',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        )
      ],)),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: (){},
          child: const Text('Ligar',
          style:  TextStyle(
            color: Color(0xFF0396F6),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          ),
        ),
      )
    ]),
    );
  }
}