import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo_impl.dart';
import 'package:bookly_app/Featuers/home/presentaition/view_model/book_details/book_details_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/boocks_details.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/home_view.dart';
import 'package:bookly_app/Featuers/searsh/presentaition/views/searsh_view.dart';
import 'package:bookly_app/Featuers/splash/presentaition/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kSearshView = '/searshView';

  static const kBoockDetails = '/boockdetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSearshView,
        builder: (context, state) => SearshView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBoockDetails,
        builder: (context, state) => BlocProvider(
            create: (context) => BookDetailsCubit(getIt.get<HomeReboImpl>()),
            child: BoocksDetails(
              bookModel: state.extra as BookModel,
            )),
      ),
    ],
  );
}
