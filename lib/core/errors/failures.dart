import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

// Represents a failure that occurred while trying to communicate with the server
class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

// Represents a failure that occurred when trying to access local data (cache/database).
class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

// Used for other types of generic failures.
class GeneralFailure extends Failure {
  const GeneralFailure(super.message);
}
