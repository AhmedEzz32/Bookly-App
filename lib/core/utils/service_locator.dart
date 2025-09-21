import 'package:bookly_app/core/utils/network/remote/dio_helper.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<AuthRepo>(AuthRepo(getIt.get<ApiService>()));
}

class AuthRepo {
  final ApiService apiService;
  AuthRepo(this.apiService);
}
