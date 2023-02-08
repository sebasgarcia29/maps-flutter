import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/views/map_view.dart';
import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/widgets/widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late LocationBloc locationBloc = BlocProvider.of<LocationBloc>(context);

  @override
  void initState() {
    super.initState();
    // locationBloc.getCurrentPosition();
    locationBloc.startFollowingUser();
  }

  @override
  void dispose() {
    super.dispose();
    locationBloc.stopFollowingUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            if (state.lastKnowLocation == null) {
              return const Center(
                child: Text('Please wait...'),
              );
            }
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Center(
                    child: MapView(initialLocation: state.lastKnowLocation!),
                  ),
                  // Positioned(
                  //   top: 15,
                  //   child: IconButton(
                  //     onPressed: () {
                  //       Navigator.pop(context);
                  //     },
                  //     icon: const Icon(Icons.arrow_back_ios),
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            BtnCurrentLocation(),
          ],
        ));
  }
}
