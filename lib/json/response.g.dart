// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return Response(
      json['message'] as String,
      json['code'] as String,
      json['count'] as int,
      (json['list'] as List)
          ?.map(
              (e) => e == null ? null : Gym.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'count': instance.count,
      'list': instance.gyms
    };

Gym _$GymFromJson(Map<String, dynamic> json) {
  return Gym(
      json['id'] as int,
      json['name'] as String,
      json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      json['services'] == null
          ? null
          : Services.fromJson(json['services'] as Map<String, dynamic>),
      json['dt'] as int,
      json['placement'] == null
          ? null
          : Placement.fromJson(json['placement'] as Map<String, dynamic>));
}

Map<String, dynamic> _$GymToJson(Gym instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coordinates': instance.coordinates,
      'services': instance.services,
      'dt': instance.date,
      'placement': instance.placement
    };

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return Coordinates(
      (json['lat'] as num)?.toDouble(), (json['long'] as num)?.toDouble());
}

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{'lat': instance.lat, 'long': instance.long};

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return Services(json['gym'] as bool, json['fitness'] as bool,
      json['sauna'] as bool, json['massage'] as bool, json['poll'] as bool);
}

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'gym': instance.gym,
      'fitness': instance.fitness,
      'sauna': instance.sauna,
      'massage': instance.massage,
      'poll': instance.poll
    };

Placement _$PlacementFromJson(Map<String, dynamic> json) {
  return Placement(json['floor'] as int, json['square'] as int,
      json['hall_quantity'] as int, json['restroom_square'] as int);
}

Map<String, dynamic> _$PlacementToJson(Placement instance) => <String, dynamic>{
      'floor': instance.floor,
      'square': instance.square,
      'hall_quantity': instance.hallQuantity,
      'restroom_square': instance.restroomQuantity
    };
