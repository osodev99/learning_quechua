import 'package:x_equis/src/game/presentation/game_page.dart';
import 'package:x_equis/src/numbers/presentation/numbers_page.dart';

import '../../src/colors/presentation/colors_page.dart';
import '../../src/home/presentation/home_page.dart';
import '../../src/profile/presentation/profile_page.dart';

abstract class AppRoutes {
  static const String profile = '/profile';
  static const String home = '/home';
  static const String colors = '/colors';
  static const String numbers = '/numbers';
  static const String game = '/game';

  static final routes = {
    profile: (context) => const ProfilePage(),
    home: (context) => const HomePage(),
    colors: (context) => const ColorsPage(),
    numbers: (context) => const NumbersPage(),
    game: (context) => const GamePage(),
  };
}
