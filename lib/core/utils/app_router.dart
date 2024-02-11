import 'package:go_router/go_router.dart';
import 'package:tele_admin/features/auth/presentation/view/login/login_view.dart';
import 'package:tele_admin/features/dashboard/presentation/view/dashboard_view.dart';

class AppRouter {
  final router = GoRouter(routes: [
    GoRoute(
        path: LoginView.routeName,
        name: LoginView.routeName,
        builder: (context, state) {
          return const LoginView();
        }),
    GoRoute(
        path: DashBoardView.routeName,
        name: DashBoardView.routeName,
        builder: (context, state) {
          return const DashBoardView();
        }),
  ]);
}
