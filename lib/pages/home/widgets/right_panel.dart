
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'suggestion_item.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: Column(children: [
          Row(children: [
            const CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage('images/perfil.png'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: 16),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('dalila70',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                Text('Dalila Custódio',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                ),

              ],)),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(onTap: (){}, child: const Text('Sair',
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                )),
              )
          ],),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text('Sugestões para você',
             style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.grey[500],
             ),
             ),
             MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){},
                child: const Text('Ver tudo',
                style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.white,
                ),
                ),
              ),
             )
          ],),
          const SizedBox(height: 8),
          const SuggestionItem(),
          const SuggestionItem(),
          const SuggestionItem(),
        ]),
      ));
  }
}