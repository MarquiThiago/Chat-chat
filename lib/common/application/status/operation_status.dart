// ignore_for_file: public_member_api_docs

import 'package:chat_chat/common/domain/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_status.freezed.dart';

/// {@template OperationStatus}
/// Standard status to be used in every controller containing operations that
/// needs the to build/feedback the UI.
///
/// Like this example:
///
/// ```
/// abstract class _ExampleGameController with Store {
///   _ExampleGameController(...) {}
///
///   @observable
///   OperationStatus<Entity> status = const OperationStatus.initial();
///
///   Future<void> someUpdateMethod(...){
///     status = const OperationStatus.loading()
///     ...
///     response.fold(
///       left(l) => status = OperationStatus.failure(l),
///       right(r) => status = OperationStatus.success(r),
///     )
///   }
/// }
/// ```
///
/// Building the UI based on the status:
///
/// ```
///   Observer(
///     builder: (_) => controller.status.map(
///       initial: (_) => const SomeRandomWidget(...),
///       loading: (_) => const LoadingWidget(...),
///       failure: (failure) => const FailureWidget(...),
///       success: (success) => SuccessWidget(success.result),
///     ),
///   ),
/// ```
///
/// Showing feedback on the UI based on the status:
///
/// ```
/// class ContinueGameCard extends StatefulWidget {...}
///
/// class _ContinueGameCardState extends State<ContinueGameCard> {
///   late ReactionDisposer reactionDispose;
///
///   @override
///   void initState() {
///     super.initState();
///     reactionDispose = autorun(
///       (_) => controller.status.maybeMap(
///         failure: (failure) => const doSomething(...),
///         orElse: () => const doNothing(...),
///       );
///     );
///   }
///
///   @override
///   void dispose() {
///     reactionDispose.call();
///     super.dispose();
///   }
///
///   @override
///   Widget build(BuildContext context) {...}
/// }
/// ```
/// {@endtemplate}
@freezed
class OperationStatus<T> with _$OperationStatus<T> {
  const OperationStatus._();

  /// {@macro OperationStatus}
  const factory OperationStatus.initial() = _Initial;

  /// {@macro OperationStatus}
  const factory OperationStatus.loading() = _Loading;

  /// {@macro OperationStatus}
  const factory OperationStatus.success(T result) = _Success;

  /// {@macro OperationStatus}
  const factory OperationStatus.failure(Failure failure) = _Failure;

  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
}
