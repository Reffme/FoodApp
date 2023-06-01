part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial({
    required String selectedItem,
    required List<ProductModel> filteredProducts,
  }) = _InitialFilterState;
}
