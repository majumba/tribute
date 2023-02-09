import 'package:get/get.dart';
import 'work_today_item_model.dart';

class WorkTodayModel {
  RxList<WorkTodayItemModel> workTodayItemList =
      RxList.filled(2, WorkTodayItemModel());
}
