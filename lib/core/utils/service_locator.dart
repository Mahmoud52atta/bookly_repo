import 'package:bookly_app/Featuers/home/data/rebos/home_rebo_impl.dart';
import 'package:bookly_app/core/utils/apis_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(
    ApisService(Dio()),
  );
  getIt.registerSingleton<HomeReboImpl>(
    HomeReboImpl(getIt.get<ApisService>()),
  );
}
