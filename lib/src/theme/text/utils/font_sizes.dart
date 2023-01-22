///Common sizes of texts.
/// * extraSmall = 10.0
/// * small = 12.0
/// * semiNormal = 16.0
/// * normal = 16.0
/// * semiBig = 18.0
/// * big = 24.0
/// * veryBig = 28.0
/// * extraBig = 32.0
enum FontSizes {
  /// value = 10.0
  extraSmall(10),

  /// value = 12.0
  small(12),

  /// value = 14.0
  semiNormal(14),

  /// value = 16.0
  normal(16),

  /// value = 18.0
  semiBig(18),

  /// value = 24.0
  big(24),

  /// value = 28.0
  veryBig(28),

  /// value = 32.0
  extraBig(32);

  final double value;
  const FontSizes(this.value);
}
