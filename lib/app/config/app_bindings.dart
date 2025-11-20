import 'package:get/get.dart';
import '../services/supabase_service.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupabaseService>(() => SupabaseService());
  }
}
