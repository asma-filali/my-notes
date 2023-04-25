import 'package:mynotes/services/auth/auth_provider.dart';
import 'package:mynotes/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;

  const AuthService(this.provider);

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  AuthUser? get currentUser => provider.currentUser;
  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) => provider.createUser(email: email, password: password,);

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();
}
