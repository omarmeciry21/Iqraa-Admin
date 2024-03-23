import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:iqraa_admin/core/app_constants.dart';
import 'package:iqraa_admin/core/app_router.dart';
import 'package:iqraa_admin/core/service_locator.dart';
import 'package:iqraa_admin/core/utils/styles.dart';
import 'package:iqraa_admin/features/login/data/repos/login_repo.dart';
import 'package:iqraa_admin/features/login/data/repos/login_repo_impl.dart';
import 'package:iqraa_admin/features/login/presentation/manager/login_cubit.dart';
import 'package:iqraa_admin/features/login/presentation/views/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  await Supabase.initialize(
    url: AppConstants.supabaseUrl,
    anonKey: AppConstants.supabaseAnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt.get<LoginCubit>()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'OpenSans',
            colorScheme:
                ColorScheme.fromSeed(seedColor: FigmaColors.primary700),
            useMaterial3: true,
          ),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.0),
            ),
            child: child!,
          ),
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
