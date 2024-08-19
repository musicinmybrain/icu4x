// generated by diplomat-tool

part of 'lib.g.dart';

/// An object capable of formatting a date time with time zone to a string.
///
/// See the [Rust documentation for `ZonedDateTimeFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.ZonedDateTimeFormatter.html) for more information.
final class ZonedDateTimeFormatter implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  ZonedDateTimeFormatter._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_ZonedDateTimeFormatter_destroy_mv1));

  /// Creates a new [`ZonedDateTimeFormatter`] from locale data.
  ///
  /// This function has `date_length` and `time_length` arguments and uses default options
  /// for the time zone.
  ///
  /// See the [Rust documentation for `try_new`](https://docs.rs/icu/latest/icu/datetime/struct.ZonedDateTimeFormatter.html#method.try_new) for more information.
  ///
  /// Throws [Error] on failure.
  factory ZonedDateTimeFormatter.withLengths(DataProvider provider, Locale locale, DateLength dateLength, TimeLength timeLength) {
    final result = _icu4x_ZonedDateTimeFormatter_create_with_lengths_mv1(provider._ffi, locale._ffi, dateLength.index, timeLength.index);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return ZonedDateTimeFormatter._fromFfi(result.union.ok, []);
  }

  /// Creates a new [`ZonedDateTimeFormatter`] from locale data.
  ///
  /// This function has `date_length` and `time_length` arguments and uses an ISO-8601 style
  /// fallback for the time zone with the given configurations.
  ///
  /// See the [Rust documentation for `try_new`](https://docs.rs/icu/latest/icu/datetime/struct.ZonedDateTimeFormatter.html#method.try_new) for more information.
  ///
  /// Throws [Error] on failure.
  factory ZonedDateTimeFormatter.withLengthsAndIso8601TimeZoneFallback(DataProvider provider, Locale locale, DateLength dateLength, TimeLength timeLength, IsoTimeZoneOptions zoneOptions) {
    final temp = _FinalizedArena();
    final result = _icu4x_ZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback_mv1(provider._ffi, locale._ffi, dateLength.index, timeLength.index, zoneOptions._toFfi(temp.arena));
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return ZonedDateTimeFormatter._fromFfi(result.union.ok, []);
  }

  /// Formats a [`DateTime`] and [`CustomTimeZone`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.ZonedDateTimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatDatetimeWithCustomTimeZone(DateTime datetime, CustomTimeZone timeZone) {
    final write = _Write();
    final result = _icu4x_ZonedDateTimeFormatter_format_datetime_with_custom_time_zone_mv1(_ffi, datetime._ffi, timeZone._ffi, write._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return write.finalize();
  }

  /// Formats a [`IsoDateTime`] and [`CustomTimeZone`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.ZonedDateTimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatIsoDatetimeWithCustomTimeZone(IsoDateTime datetime, CustomTimeZone timeZone) {
    final write = _Write();
    final result = _icu4x_ZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone_mv1(_ffi, datetime._ffi, timeZone._ffi, write._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return write.finalize();
  }
}

@meta.ResourceIdentifier('icu4x_ZonedDateTimeFormatter_destroy_mv1')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_ZonedDateTimeFormatter_destroy_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_ZonedDateTimeFormatter_destroy_mv1(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('icu4x_ZonedDateTimeFormatter_create_with_lengths_mv1')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Int32, ffi.Int32)>(isLeaf: true, symbol: 'icu4x_ZonedDateTimeFormatter_create_with_lengths_mv1')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _icu4x_ZonedDateTimeFormatter_create_with_lengths_mv1(ffi.Pointer<ffi.Opaque> provider, ffi.Pointer<ffi.Opaque> locale, int dateLength, int timeLength);

@meta.ResourceIdentifier('icu4x_ZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback_mv1')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Int32, ffi.Int32, _IsoTimeZoneOptionsFfi)>(isLeaf: true, symbol: 'icu4x_ZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback_mv1')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _icu4x_ZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback_mv1(ffi.Pointer<ffi.Opaque> provider, ffi.Pointer<ffi.Opaque> locale, int dateLength, int timeLength, _IsoTimeZoneOptionsFfi zoneOptions);

@meta.ResourceIdentifier('icu4x_ZonedDateTimeFormatter_format_datetime_with_custom_time_zone_mv1')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_ZonedDateTimeFormatter_format_datetime_with_custom_time_zone_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _icu4x_ZonedDateTimeFormatter_format_datetime_with_custom_time_zone_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> datetime, ffi.Pointer<ffi.Opaque> timeZone, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('icu4x_ZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone_mv1')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_ZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _icu4x_ZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> datetime, ffi.Pointer<ffi.Opaque> timeZone, ffi.Pointer<ffi.Opaque> write);
