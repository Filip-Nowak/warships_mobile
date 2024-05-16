import 'package:flutter/material.dart';
import 'package:warships_mobile/layouts/JoinRoomLayout.dart';
import 'package:warships_mobile/layouts/RoomLayout.dart';
import 'package:warships_mobile/utils/UserDetails.dart';

import 'layouts/CreatorLayout.dart';
import 'layouts/HomeLayout.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/home",
    routes: {
      "/home":(context)=> const HomeLayout(),
      "/creator":(context)=>const CreatorLayout(),
      "/game":((context)=>  Scaffold(body: UserDetails.instance.game.view)),
      "/createRoom":(context)=>const JoinRoomLayout(),
      "/room":(context)=>const RoomLayout()
    },
  ));
}
