import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Property extends Equatable {
  const Property({
    required this.id,
    required this.description,
    required this.propertyType,
    required this.roomType,
    required this.pricePerNight,
    required this.country,
    required this.city,
    required this.maxGuests,
    required this.amenities,
    required this.mainPhotoUrl,
    required this.photoUrls,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'] as String? ?? const Uuid().v4(),
      description: json['description'] as String? ?? '',
      propertyType: json['propertyType'] as String? ?? '',
      roomType: json['roomType'] as String? ?? '',
      pricePerNight: json['pricePerNight'] as double? ?? 0.0,
      country: json['country'] as String? ?? '',
      city: json['city'] as String? ?? '',
      maxGuests: json['maxGuests'] as int? ?? 0,
      amenities: json['amenities'] != null
          ? List<String>.from(json['amenities'] as List)
          : [],
      mainPhotoUrl: json['mainPhotoUrl'] as String? ??
          'https://source.unsplash.com/random/?property',
      photoUrls: json['photoUrls'] != null
          ? List<String>.from(json['photoUrls'] as List)
          : [],
    );
  }
  final String id;
  final String description;
  final String propertyType;
  final String roomType;
  final double pricePerNight;
  final String country;
  final String city;
  final int maxGuests;
  final List<String> amenities;
  final String mainPhotoUrl;
  final List<String> photoUrls;

  Property copyWith({
    String? id,
    String? description,
    String? propertyType,
    String? roomType,
    double? pricePerNight,
    String? country,
    String? city,
    int? maxGuests,
    List<String>? amenities,
    String? mainPhotoUrl,
    List<String>? photoUrls,
  }) {
    return Property(
      id: id ?? this.id,
      description: description ?? this.description,
      propertyType: propertyType ?? this.propertyType,
      roomType: roomType ?? this.roomType,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      country: country ?? this.country,
      city: city ?? this.city,
      maxGuests: maxGuests ?? this.maxGuests,
      amenities: amenities ?? this.amenities,
      mainPhotoUrl: mainPhotoUrl ?? this.mainPhotoUrl,
      photoUrls: photoUrls ?? this.photoUrls,
    );
  }

  @override
  List<Object?> get props => [
        id,
        description,
        propertyType,
        roomType,
        pricePerNight,
        country,
        city,
        maxGuests,
        amenities,
        mainPhotoUrl,
        photoUrls,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'propertyType': propertyType,
      'roomType': roomType,
      'pricePerNight': pricePerNight,
      'country': country,
      'city': city,
      'maxGuests': maxGuests,
      'amenities': amenities,
      'mainPhotoUrl': mainPhotoUrl,
      'photoUrls': photoUrls,
    };
  }

  static List<Property> sampleData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful villa with private pool',
      propertyType: 'Villa',
      roomType: 'Entire place',
      pricePerNight: 200,
      country: 'Spain',
      city: 'Barcelona',
      maxGuests: 8,
      amenities: const ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?villa',
      photoUrls: const [
        'https://source.unsplash.com/random/?pool',
        'https://source.unsplash.com/random/?bedroom',
      ],
    ),
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful apartment in the heart of the city',
      propertyType: 'Apartment',
      roomType: 'Entire place',
      pricePerNight: 100,
      country: 'Spain',
      city: 'Barcelona',
      maxGuests: 4,
      amenities: const ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?apartment',
      photoUrls: const [
        'https://source.unsplash.com/random/?livingroom',
        'https://source.unsplash.com/random/?bedroom',
      ],
    ),
  ];
}
