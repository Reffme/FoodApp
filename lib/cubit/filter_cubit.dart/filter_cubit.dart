import 'package:bloc/bloc.dart';
import 'package:food_ordering_service/model/product_model.dart';
import 'package:food_ordering_service/repositories/filter_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _filterRepository;

  FilterCubit(this._filterRepository)
      : super(FilterState.initial(
          selectedItem: _filterRepository.getSelectedItem(),
          filteredProducts: _filterRepository.getAllProducts(),
        ));

  updateSelectedItem(String selectedItem) {
    final List<ProductModel> filteredProducts;
    if (selectedItem == "Все") {
      filteredProducts = _filterRepository.getAllProducts();
    } else {
      filteredProducts = _filterRepository
          .getAllProducts()
          .where((product) => product.category.contains(selectedItem))
          .toList();
    }

    emit(
      FilterState.initial(
        selectedItem: selectedItem,
        filteredProducts: filteredProducts,
      ),
    );
  }
}
