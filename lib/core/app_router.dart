import 'package:go_router/go_router.dart';
import 'package:iqraa_admin/features/login/presentation/views/login_screen.dart';
import 'package:iqraa_admin/home/views/home_screen.dart';

class AppRouter {
  static const kLoginView = '/';
  static const kHomeView = '/home';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kLoginView,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeScreen()),
    ],
  );
}
