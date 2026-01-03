import 'package:ananta_house/components/badge/card_badge.dart';
import 'package:ananta_house/extension/property_type_ui.dart';
import 'package:ananta_house/models/list_item_model.dart';
import 'package:ananta_house/screens/detail/detail_screen.dart';
import 'package:ananta_house/utils/money_currency.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                  CachedNetworkImage(
                    imageUrl: building.imageAsset,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.person, color: Colors.white),
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
                          textCount: building.sqm.toString(),
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
