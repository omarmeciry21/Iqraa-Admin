import 'package:get_it/get_it.dart';
import 'package:iqraa_admin/features/login/data/repos/login_repo.dart';
import 'package:iqraa_admin/features/login/data/repos/login_repo_impl.dart';
import 'package:iqraa_admin/features/login/presentation/manager/login_cubit.dart';

final getIt = GetIt.instance;

serviceLocator() {
  getIt.registerSingleton<LoginRepo>(LoginRepoImpl());

  getIt.registerSingleton<LoginCubit>(LoginCubit(getIt.get<LoginRepo>()));
}
