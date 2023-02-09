import 'package:steve_s_application5/core/app_export.dart';
import 'package:steve_s_application5/presentation/wish_list_screen/models/wish_list_model.dart';

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
