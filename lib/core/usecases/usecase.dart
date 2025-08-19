import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../errors/failures.dart';

// The base class for all UseCases in the application.
// DataType: The type of data that will be returned on success.
// Params: The type of parameters required to execute the use case.
abstract class UseCase<DataType, Params> {
  Future<Either<Failure, DataType>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
