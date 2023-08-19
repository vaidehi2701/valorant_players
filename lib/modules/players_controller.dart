import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../apis/players_api.dart';
import '../models/players_response_model.dart';
import '../utils/app_utils.dart';

class PlayersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final PlayersApi _agentsApi = PlayersApi();

  final LiquidController liquidController = LiquidController();

  TabController? tabController;

  var bgColors = [];

  var allAgents = <Datum>[].obs;
  var activeIndex = 0.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    _getAgentsList();
    super.onInit();
  }

  void _getAgentsList() async {
    isLoading.value = true;
    var response = await _agentsApi.getPlayers();
    if (response.status == 200) {
      allAgents.clear();
      allAgents.addAll(response.data);
      tabController = TabController(length: allAgents.length, vsync: this);
      bgColors = AppUtils.generateRandomColors(allAgents.length);
    } else {
      Get.snackbar("Error", "Something went wrong !!");
    }
    isLoading.value = false;
  }
}
