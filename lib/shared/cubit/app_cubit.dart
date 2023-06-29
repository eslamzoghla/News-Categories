import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_category/shared/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
}
