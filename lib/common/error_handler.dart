import 'exception.dart';

Map<int, Exception> errorHandlerMap(String message) {
  return {
    400: BadRequestException(message),
    401: UnauthenticateException(message),
    403: UnauthorizedException(message),
    404: NotFoundException(),
    500: ServerException(message),
  };
}
