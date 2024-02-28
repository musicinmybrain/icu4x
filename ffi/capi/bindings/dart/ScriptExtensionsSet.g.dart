// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An object that represents the Script_Extensions property for a single character
///
/// See the [Rust documentation for `ScriptExtensionsSet`](https://docs.rs/icu/latest/icu/properties/script/struct.ScriptExtensionsSet.html) for more information.
final class ScriptExtensionsSet implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;
  final core.List<Object> _edge_a;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  ScriptExtensionsSet._(this._underlying, bool isOwned, this._edge_self, this._edge_a) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XScriptExtensionsSet_destroy));

  /// Check if the Script_Extensions property of the given code point covers the given script
  ///
  /// See the [Rust documentation for `contains`](https://docs.rs/icu/latest/icu/properties/script/struct.ScriptExtensionsSet.html#method.contains) for more information.
  bool contains(int script) {
    final result = _ICU4XScriptExtensionsSet_contains(_underlying, script);
    return result;
  }

  /// Get the number of scripts contained in here
  ///
  /// See the [Rust documentation for `iter`](https://docs.rs/icu/latest/icu/properties/script/struct.ScriptExtensionsSet.html#method.iter) for more information.
  int get count {
    final result = _ICU4XScriptExtensionsSet_count(_underlying);
    return result;
  }

  /// Get script at index
  ///
  /// See the [Rust documentation for `iter`](https://docs.rs/icu/latest/icu/properties/script/struct.ScriptExtensionsSet.html#method.iter) for more information.
  int? scriptAt(int index) {
    final result = _ICU4XScriptExtensionsSet_script_at(_underlying, index);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XScriptExtensionsSet_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XScriptExtensionsSet_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>, ffi.Uint16)>(isLeaf: true, symbol: 'ICU4XScriptExtensionsSet_contains')
// ignore: non_constant_identifier_names
external bool _ICU4XScriptExtensionsSet_contains(ffi.Pointer<ffi.Opaque> self, int script);

@ffi.Native<ffi.Size Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XScriptExtensionsSet_count')
// ignore: non_constant_identifier_names
external int _ICU4XScriptExtensionsSet_count(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultUint16Void Function(ffi.Pointer<ffi.Opaque>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XScriptExtensionsSet_script_at')
// ignore: non_constant_identifier_names
external _ResultUint16Void _ICU4XScriptExtensionsSet_script_at(ffi.Pointer<ffi.Opaque> self, int index);
