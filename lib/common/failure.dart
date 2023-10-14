import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class CommonFailure extends Failure {
  const CommonFailure(super.message);
}

class UnauthenticationFailure extends Failure {
  const UnauthenticationFailure(super.message);
}

class UnauthorizationFailure extends Failure {
  const UnauthorizationFailure(super.message);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure(super.message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.message);
}
