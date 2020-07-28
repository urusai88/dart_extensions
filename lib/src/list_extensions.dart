import 'dart:math';

extension ListExtensions<T> on List<T> {
  T random(Random random) {
    return this[random.nextInt(length)];
  }

  int randomIndex(Random random) {
    return random.nextInt(length);
  }

  List<T> randomMany(int count, Random random) {
    if (length < count) {
      throw StateError('List.length < $count');
    }

    final result = <T>[];
    var pool = List<T>.of(this);

    for (var i = 0; i < count; ++i) {
      final idx = pool.randomIndex(random);
      result.add(pool[idx]);
      pool.removeAt(idx);
    }

    return result;
  }

  void insertBetween(T element) {
    if (length < 2) return;

    for (var i = length; i > 1; i--) {
      insert(i - 1, element);
    }
  }

  List<T> insertBetweenReturn(T element) {
    insertBetween(element);
    return this;
  }
}
