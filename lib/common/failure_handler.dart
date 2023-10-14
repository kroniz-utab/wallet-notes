import 'package:dartz/dartz.dart';

import 'exception.dart';
import 'failure.dart';

Future<Either<Failure, T>> failureHandler<T>(e) async {
  try {
    throw e;
  } on BadRequestException catch (e) {
    return Left(BadRequestFailure(e.message));
  } on UnauthenticateException catch (e) {
    return Left(UnauthenticationFailure(e.message));
  } on UnauthorizedException catch (e) {
    return Left(UnauthorizationFailure(e.message));
  } on NotFoundException {
    return const Left(NotFoundFailure(
        'Data tidak tersedia, mohon tunggu sebentar dan ulangi request!'));
  } on ServerException catch (e) {
    return Left(ServerFailure(e.message));
  } on CommonException catch (e) {
    return Left(CommonFailure(e.message));
  } on UnknownException catch (e) {
    return Left(UnknownFailure(e.message ?? 'Something wrong'));
  }
}
