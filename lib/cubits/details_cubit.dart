import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:storeapp/models/details_model.dart';
import 'package:storeapp/services/get_all_product_services.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());
  DetailsModel detailsModel = DetailsModel();
  Future<void> fetchUserInfo(int personId) async {
    emit(DetailsLoading());
    try {
      var response = await AllProductsServices().getAllProducts();
      if(response != null){
        emit(DetailsSuccess());
      }

    } catch (e) {
      emit(DetailsFailed());
    }
  }
}
