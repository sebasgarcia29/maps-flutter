part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isMapInitialized;
  final bool isFollowingUser;

  //Polylines
  final Map<String, Polyline> polylines;
  final bool isShowMyRoute;

  const MapState({
    this.isMapInitialized = false,
    this.isFollowingUser = true,
    Map<String, Polyline>? polylines,
    this.isShowMyRoute = true,
  }) : polylines = polylines ?? const {};

  MapState copyWith({
    bool? isMapInitialized,
    bool? isFollowingUser,
    bool? isShowMyRoute,
    Map<String, Polyline>? polylines,
  }) =>
      MapState(
        isMapInitialized: isMapInitialized ?? this.isMapInitialized,
        isFollowingUser: isFollowingUser ?? this.isFollowingUser,
        polylines: polylines ?? this.polylines,
        isShowMyRoute: isShowMyRoute ?? this.isShowMyRoute,
      );

  @override
  List<Object> get props =>
      [isMapInitialized, isFollowingUser, polylines, isShowMyRoute];
}
