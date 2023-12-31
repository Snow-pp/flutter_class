import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  // UI에 데이터까지 포함해서 코드를 설계해 나가고 있다.
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
              iconMenuList.length,
              (index) => _buildRowIconItem(
                    iconMenuList[index].title,
                    iconMenuList[index].iconData,
                  )),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17),
          const SizedBox(width: 20),
          Text(title, style: textTheme().titleMedium)
        ],
      ),
    );
  }
}
