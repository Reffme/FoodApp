// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  String get selectedItem => throw _privateConstructorUsedError;
  List<ProductModel> get filteredProducts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedItem, List<ProductModel> filteredProducts)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedItem, List<ProductModel> filteredProducts)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedItem, List<ProductModel> filteredProducts)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFilterState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call({String selectedItem, List<ProductModel> filteredProducts});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? filteredProducts = null,
  }) {
    return _then(_value.copyWith(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as String,
      filteredProducts: null == filteredProducts
          ? _value.filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialFilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_InitialFilterStateCopyWith(_$_InitialFilterState value,
          $Res Function(_$_InitialFilterState) then) =
      __$$_InitialFilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedItem, List<ProductModel> filteredProducts});
}

/// @nodoc
class __$$_InitialFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$_InitialFilterState>
    implements _$$_InitialFilterStateCopyWith<$Res> {
  __$$_InitialFilterStateCopyWithImpl(
      _$_InitialFilterState _value, $Res Function(_$_InitialFilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? filteredProducts = null,
  }) {
    return _then(_$_InitialFilterState(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as String,
      filteredProducts: null == filteredProducts
          ? _value._filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_InitialFilterState implements _InitialFilterState {
  const _$_InitialFilterState(
      {required this.selectedItem,
      required final List<ProductModel> filteredProducts})
      : _filteredProducts = filteredProducts;

  @override
  final String selectedItem;
  final List<ProductModel> _filteredProducts;
  @override
  List<ProductModel> get filteredProducts {
    if (_filteredProducts is EqualUnmodifiableListView)
      return _filteredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredProducts);
  }

  @override
  String toString() {
    return 'FilterState.initial(selectedItem: $selectedItem, filteredProducts: $filteredProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialFilterState &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality()
                .equals(other._filteredProducts, _filteredProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedItem,
      const DeepCollectionEquality().hash(_filteredProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialFilterStateCopyWith<_$_InitialFilterState> get copyWith =>
      __$$_InitialFilterStateCopyWithImpl<_$_InitialFilterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedItem, List<ProductModel> filteredProducts)
        initial,
  }) {
    return initial(selectedItem, filteredProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedItem, List<ProductModel> filteredProducts)?
        initial,
  }) {
    return initial?.call(selectedItem, filteredProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedItem, List<ProductModel> filteredProducts)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedItem, filteredProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFilterState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFilterState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFilterState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialFilterState implements FilterState {
  const factory _InitialFilterState(
          {required final String selectedItem,
          required final List<ProductModel> filteredProducts}) =
      _$_InitialFilterState;

  @override
  String get selectedItem;
  @override
  List<ProductModel> get filteredProducts;
  @override
  @JsonKey(ignore: true)
  _$$_InitialFilterStateCopyWith<_$_InitialFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
