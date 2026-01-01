import 'package:ananta_house/components/badge/card_badge.dart';
import 'package:ananta_house/extension/property_type_ui.dart';
import 'package:ananta_house/models/list_item_model.dart';
import 'package:ananta_house/screens/detail/detail_screen.dart';
import 'package:ananta_house/utils/money_currency.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BuildingCard extends StatelessWidget {
  final Building building;

  const BuildingCard({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailBuilding(building: building),
          ),
        );
      },
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Stack(
                children: [
                  Image.network(
                    building.imageAsset.isNotEmpty
                        ? building.imageAsset
                        : 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?q=80&w=2950&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    height: 234,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;

                      return SizedBox(
                        height: 234,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.grey.shade400,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  Positioned(
                    top: 12,
                    right: 12,
                    child: CardBadge(
                      textSpec: building.propertyType.label,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              building.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Location: ${building.location}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Center(
                        child: Text(
                          MoneyCurrency.formatUSD(building.price),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: CardBadge(
                          icon: Icon(LucideIcons.bedDouble, size: 16),
                          textCount: building.beds.toString(),
                          textSpec: 'Beds',
                          backgroundColor: Color(0xFFF6F6F6),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: CardBadge(
                          icon: Icon(LucideIcons.bath, size: 16),
                          textCount: building.baths.toString(),
                          textSpec: 'Baths',
                          backgroundColor: Color(0xFFF6F6F6),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: CardBadge(
                          icon: Icon(LucideIcons.ruler, size: 16),
                          textCount: building.garages.toString(),
                          textSpec: 'Sqm',
                          backgroundColor: Color(0xFFF6F6F6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
