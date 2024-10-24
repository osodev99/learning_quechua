import '../../src/auth/signin/presentation/signin_page.dart';
import '../../src/auth/signin/presentation/splash_page.dart';
import '../../src/profile/presentation/profile_page.dart';

abstract class AppRoutes {
  static const String splash = '/splash';
  static const String signIn = '/signIn';
  static const String profile = '/profile';

  static final routes = {
    splash: (context) => const SplashPage(),
    signIn: (context) => const SignInPage(),
    profile: (context) => const ProfilePage(),
  };
}
