import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  final String message;
  final String code;
  final int count;
  @JsonKey(name: 'list')
  final List<Gym> gyms;

  Response(this.message, this.code, this.count, this.gyms);

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@JsonSerializable()
class Gym {
  final int id;
  final String name;
  final Coordinates coordinates;
  final Services services;
  @JsonKey(name: 'dt')
  final int date;
  final Placement placement;

  Gym(this.id, this.name, this.coordinates, this.services, this.date, this.placement);

  factory Gym.fromJson(Map<String, dynamic> json) => _$GymFromJson(json);
}

@JsonSerializable()
class Coordinates {
  final double lat;
  final double long;

  Coordinates(this.lat, this.long);

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

@JsonSerializable()
class Services {
  final bool gym;
  final bool fitness;
  final bool sauna;
  final bool massage;
  final bool poll;

  Services(this.gym, this.fitness, this.sauna, this.massage, this.poll);

  factory Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);
}

@JsonSerializable()
class Placement {
  final int floor;
  final int square;
  @JsonKey(name: 'hall_quantity')
  final int hallQuantity;
  @JsonKey(name: 'restroom_square')
  final int restroomQuantity;

  Placement(this.floor, this.square, this.hallQuantity, this.restroomQuantity);

  factory Placement.fromJson(Map<String, dynamic> json) => _$PlacementFromJson(json);
}
