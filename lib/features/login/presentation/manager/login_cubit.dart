import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqraa_admin/features/login/data/models/admin_model.dart';
import 'package:iqraa_admin/features/login/data/repos/login_repo.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final AdminModel user;

  LoginSuccess(this.user);
}

class LoginError extends LoginState {
  final String message;

  LoginError(this.message);
}

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginInitial());

  void login(String username, String password) async {
    emit(LoginLoading());
    try {
      final result = await loginRepo.login(username, password);

      emit(LoginSuccess(AdminModel.fromJson(result)));
    } catch (e) {
      emit(LoginError('Invalid username or password'));
    }
  }
}
