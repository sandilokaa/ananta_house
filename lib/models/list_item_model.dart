enum TransactionType { rent, sell }

enum PropertyType { house, villa, apartment }

class Building {
  final String name;
  final TransactionType transactionType;
  final PropertyType propertyType;
  final String location;
  final String imageAsset;
  final int price;
  final int beds;
  final int baths;
  final int garages;
  final int sqm;

  const Building({
    required this.name,
    required this.transactionType,
    required this.propertyType,
    required this.location,
    required this.imageAsset,
    required this.price,
    required this.beds,
    required this.baths,
    required this.garages,
    required this.sqm,
  });
}

final buildingLists = [
  Building(
    name: 'Modern Family House',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Jakarta Selatan',
    imageAsset:
        'https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 250000,
    beds: 4,
    baths: 3,
    garages: 2,
    sqm: 180,
  ),
  Building(
    name: 'Urban Minimalist House',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Bandung',
    imageAsset:
        'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 180000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 140,
  ),
  Building(
    name: 'City View Apartment',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.apartment,
    location: 'Jakarta Pusat',
    imageAsset:
        'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 850000,
    beds: 2,
    baths: 1,
    garages: 1,
    sqm: 75,
  ),
  Building(
    name: 'Compact Studio Apartment',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.apartment,
    location: 'Bekasi',
    imageAsset:
        'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 450000,
    beds: 1,
    baths: 1,
    garages: 0,
    sqm: 40,
  ),
  Building(
    name: 'Luxury Tropical Villa',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.villa,
    location: 'Bali',
    imageAsset:
        'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 620000,
    beds: 5,
    baths: 4,
    garages: 2,
    sqm: 350,
  ),
  Building(
    name: 'Beachfront Villa',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.villa,
    location: 'Lombok',
    imageAsset:
        'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 450000,
    beds: 4,
    baths: 4,
    garages: 2,
    sqm: 300,
  ),
  Building(
    name: 'Suburban Comfort House',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Depok',
    imageAsset:
        'https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 130000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 130,
  ),
  Building(
    name: 'Green Living Residence',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Bogor',
    imageAsset:
        'https://images.unsplash.com/photo-1523217582562-09d0def993a6?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 145000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 150,
  ),
  Building(
    name: 'Skyline Apartment',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.apartment,
    location: 'Surabaya',
    imageAsset:
        'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 210000,
    beds: 2,
    baths: 2,
    garages: 1,
    sqm: 90,
  ),
  Building(
    name: 'Central Business Apartment',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.apartment,
    location: 'Jakarta Barat',
    imageAsset:
        'https://images.unsplash.com/photo-1628592102751-ba83b0314276?q=80&w=3197&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 950000,
    beds: 2,
    baths: 1,
    garages: 1,
    sqm: 80,
  ),
  Building(
    name: 'Elegant Classic House',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Yogyakarta',
    imageAsset:
        'https://images.unsplash.com/photo-1494526585095-c41746248156?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 165000,
    beds: 4,
    baths: 3,
    garages: 2,
    sqm: 200,
  ),
  Building(
    name: 'Modern Cluster House',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.house,
    location: 'Tangerang',
    imageAsset:
        'https://images.unsplash.com/photo-1592595896616-c37162298647?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 120000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 120,
  ),
  Building(
    name: 'Private Pool Villa',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.villa,
    location: 'Ubud',
    imageAsset:
        'https://images.unsplash.com/photo-1564501049412-61c2a3083791?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 720000,
    beds: 6,
    baths: 5,
    garages: 2,
    sqm: 420,
  ),
  Building(
    name: 'Cozy Hillside Villa',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.villa,
    location: 'Puncak',
    imageAsset:
        'https://images.unsplash.com/photo-1613490493576-7fde63acd811?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 380000,
    beds: 4,
    baths: 3,
    garages: 1,
    sqm: 280,
  ),
  Building(
    name: 'Affordable City Apartment',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.apartment,
    location: 'Malang',
    imageAsset:
        'https://images.unsplash.com/photo-1484154218962-a197022b5858?q=80&w=2948&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 980000,
    beds: 2,
    baths: 1,
    garages: 0,
    sqm: 65,
  ),
  Building(
    name: 'Premium Downtown Apartment',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.apartment,
    location: 'Jakarta Selatan',
    imageAsset:
        'https://images.unsplash.com/photo-1502672023488-70e25813eb80?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 125000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 110,
  ),
  Building(
    name: 'Family Friendly House',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.house,
    location: 'Semarang',
    imageAsset:
        'https://images.unsplash.com/photo-1576941089067-2de3c901e126?q=80&w=3078&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 150000,
    beds: 4,
    baths: 3,
    garages: 2,
    sqm: 170,
  ),
  Building(
    name: 'Quiet Residential House',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.house,
    location: 'Solo',
    imageAsset:
        'https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 900000,
    beds: 3,
    baths: 2,
    garages: 1,
    sqm: 125,
  ),
  Building(
    name: 'Ocean View Villa',
    transactionType: TransactionType.sell,
    propertyType: PropertyType.villa,
    location: 'Nusa Dua',
    imageAsset:
        'https://plus.unsplash.com/premium_photo-1682377521625-c656fc1ff3e1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 880000,
    beds: 5,
    baths: 5,
    garages: 2,
    sqm: 450,
  ),
  Building(
    name: 'City Starter Apartment',
    transactionType: TransactionType.rent,
    propertyType: PropertyType.apartment,
    location: 'Cibubur',
    imageAsset:
        'https://images.unsplash.com/photo-1612320648993-61c1cd604b71?q=80&w=2944&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 520000,
    beds: 1,
    baths: 1,
    garages: 0,
    sqm: 42,
  ),
];
