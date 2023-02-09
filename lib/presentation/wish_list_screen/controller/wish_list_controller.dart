import 'package:tribute/core/app_export.dart';
import 'package:tribute/presentation/wish_list_screen/models/wish_list_model.dart';

class WishListController extends GetxController {
  Rx<WishListModel> wishListModelObj = WishListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
