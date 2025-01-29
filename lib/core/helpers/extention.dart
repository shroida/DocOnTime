extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
