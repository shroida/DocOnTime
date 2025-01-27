import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';
@freezed
class SignupState<T> with _$SignupState<T>{
const factory SignupState.initial()=_initial;
const factory SignupState.signupLoading()=_SignupLoading;
const factory SignupState.signupSucess(T data)=_SignupSucess;
const factory SignupState.signupError({required String error})=_SignupError;


}