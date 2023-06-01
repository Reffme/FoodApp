part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial(
      {required List<CartProductModel> Cartproducts,
      required int total}) = _Initial;
}
