import 'package:tribute/core/app_export.dart';
import 'package:tribute/presentation/work_today_screen/models/work_today_model.dart';

class WorkTodayController extends GetxController {
  Rx<WorkTodayModel> workTodayModelObj = WorkTodayModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
