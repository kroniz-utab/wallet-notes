class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}

class BadRequestException implements Exception {
  final String message;

  BadRequestException(this.message);
}

class UnauthenticateException implements Exception {
  final String message;

  UnauthenticateException(this.message);
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException(this.message);
}

class NotFoundException implements Exception {}

class CommonException implements Exception {
  final String message;

  CommonException(this.message);
}

class UnknownException implements Exception {
  final String? message;

  UnknownException(this.message);
}
