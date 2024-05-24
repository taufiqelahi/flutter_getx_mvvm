class AppExceptions implements Exception {
  final String? _message;  // Use String? to indicate that it can be null
  final String? _prefix;   // Use String? to indicate that it can be null

  // Constructor with optional named parameters and default values
  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}
class InternetException extends AppExceptions{
  InternetException([String ?message]):super(message,'No Internet');
}
class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String ?message]):super(message,'Request Time Out');
}

class ServerException extends AppExceptions{
  ServerException([String ?message]):super(message,'Server Internal  Error');
}