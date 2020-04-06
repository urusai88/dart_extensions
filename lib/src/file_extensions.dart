import 'dart:io';

extension FileExtension on FileSystemEntity {
  String get name {
    var stat = statSync();

    if (stat.type == FileSystemEntityType.file) {
      return uri.pathSegments.elementAt(uri.pathSegments.length - 1);
    } else if (stat.type == FileSystemEntityType.directory) {
      return uri.pathSegments.elementAt(uri.pathSegments.length - 2);
    } else {
      return 'Could not be resolved';
    }
  }
}
