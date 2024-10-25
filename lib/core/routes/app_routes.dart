import '../../src/colors/presentation/colors_page.dart';
import '../../src/home/presentation/home_page.dart';
import '../../src/profile/presentation/profile_page.dart';

abstract class AppRoutes {
  static const String profile = '/profile';
  static const String home = '/home';
  static const String colors = '/colors';

  static final routes = {
    profile: (context) => const ProfilePage(),
    home: (context) => const HomePage(),
    colors: (context) => const ColorsPage(),
  };
}
