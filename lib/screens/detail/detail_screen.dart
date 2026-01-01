import 'package:ananta_house/components/badge/detail_badge.dart';
import 'package:ananta_house/components/button/circle_button.dart';
import 'package:ananta_house/components/button/long_button.dart';
import 'package:ananta_house/components/map/map_wrapped.dart';
import 'package:ananta_house/models/list_item_model.dart';
import 'package:ananta_house/utils/money_currency.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DetailBuilding extends StatelessWidget {
  final Building building;
  const DetailBuilding({required this.building, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: SizedBox(
                    height: 370,
                    width: double.infinity,
                    child: Image.network(
                      building.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleButton(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(LucideIcons.chevronLeft),
                        ),
                        CircleButton(
                          onTap: () {},
                          child: const Icon(LucideIcons.heart),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        building.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E1E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Text(
                        MoneyCurrency.formatUSD(building.price),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E1E1E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        LucideIcons.mapPin,
                        size: 20,
                        color: Color(0xFF1E1E1E),
                      ),
                      SizedBox(width: 12),
                      Text(
                        building.location,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFBCBCBC),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: DetailBadge(
                          icon: Icon(LucideIcons.bedDouble, size: 20),
                          textCount: building.beds.toString(),
                          textSpec: 'Beds',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: DetailBadge(
                          icon: Icon(LucideIcons.bath, size: 20),
                          textCount: building.baths.toString(),
                          textSpec: 'Baths',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: DetailBadge(
                          icon: Icon(LucideIcons.car, size: 20),
                          textCount: building.garages.toString(),
                          textSpec: 'Parking',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: DetailBadge(
                          icon: Icon(LucideIcons.ruler, size: 20),
                          textCount: building.sqm.toString(),
                          textSpec: 'Sqm',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Listing Agent',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E1E1E),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleButton(
                                        height: 50,
                                        color: Colors.black,
                                        child: ClipOval(
                                          child: Image.network(
                                            'https://i.pravatar.cc/150',
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                      SizedBox(width: 12),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'John Doe',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          Text(
                                            'Puri Buana Group',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFFBCBCBC),
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      LongButton(
                                        isActive: true,
                                        onPressed: () {},
                                        text: 'Contact Now',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Location Address',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E1E1E),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: MapWrapped(
                          latitude: -6.200000,
                          longitude: 106.816666,
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
