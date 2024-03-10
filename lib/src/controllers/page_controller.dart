import 'package:get/get.dart';

class PageController extends GetxController {
  RxInt currentPageIndex = 0.obs;

  void changePageIndex(int newIndex) {
    currentPageIndex.value = newIndex;
  }
}
