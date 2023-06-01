import 'package:bloc/bloc.dart';
import 'package:food_ordering_service/model/car%D0%B5_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  List<CartProductModel> cartProducts = [];
  int totalSum = 0;
  CartCubit()
      : super(const CartState.initial(
          Cartproducts: [],
          total: 0,
        ));

  addProduct({required CartProductModel cartProduct}) {
    if (!isNameInCartProducts(cartProducts, cartProduct.name)) {
      cartProducts.add(cartProduct);
      totalSum = cartProducts.fold(
          0, (sum, product) => sum + (product.count * product.price));

      emit(
        CartState.initial(Cartproducts: cartProducts, total: totalSum),
      );
    }
  }

  incrementTotalSum({required int index}) {
    if (cartProducts[index].count >= 0) {
      cartProducts[index].count++;
      calculateTotalSumAndEmitInit();
    }
  }

  decrementTotalSum({required int index}) {
    if (cartProducts[index].count > 0) {
      cartProducts[index].count--;
      calculateTotalSumAndEmitInit();
    }
  }

  deleteProduct({required int index}) {
    cartProducts.removeAt(index);

    calculateTotalSumAndEmitInit();
  }

  bool isNameInCartProducts(List<CartProductModel> cartProducts, String name) {
    return cartProducts.any((product) => product.name == name);
  }

  void calculateTotalSumAndEmitInit() {
    int totalSum = cartProducts.fold(
        0, (sum, product) => sum + (product.count * product.price));
    emit(
      CartState.initial(Cartproducts: cartProducts, total: totalSum),
    );
  }
}
