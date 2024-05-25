import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token.g.dart';

@Riverpod(keepAlive: true)
String? token(TokenRef ref) => Platform.environment['CODEMAGIC_API_TOKEN'];
