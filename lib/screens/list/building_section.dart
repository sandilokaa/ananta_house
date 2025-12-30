import 'package:ananta_house/components/card/building_card.dart';
import 'package:ananta_house/models/list_item_model.dart';
import 'package:flutter/material.dart';

class BuildingSection extends StatelessWidget {
  const BuildingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Offers',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1E1E1E),
                fontFamily: 'Montserrat',
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFBCBCBC),
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
        ListView.builder(
          itemCount: buildingLists.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BuildingCard(building: buildingLists[index]),
          ),
        ),
      ],
    );
  }
}
