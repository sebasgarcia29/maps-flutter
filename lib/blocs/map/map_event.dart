part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnMapInitilizedEvent extends MapEvent {
  final GoogleMapController controller;

  const OnMapInitilizedEvent(this.controller);

  @override
  List<Object> get props => [controller];
}
