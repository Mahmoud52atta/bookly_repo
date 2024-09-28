import 'package:bookly_app/Featuers/home/presentaition/views/boocks_details.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/home_view.dart';
import 'package:bookly_app/Featuers/splash/presentaition/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kBoockDetails = '/boockdetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBoockDetails,
        builder: (context, state) => BoocksDetails(),
      ),
    ],
  );
}
