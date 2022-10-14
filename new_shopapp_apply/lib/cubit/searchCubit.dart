import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/cubit/states.dart';
import 'package:new_news_app_apply/models/homeModels/productModel.dart';
import 'package:new_news_app_apply/models/searchModel/searchModel.dart';
import 'package:new_news_app_apply/remoteNetwork/dioHelper.dart';
import 'package:new_news_app_apply/remoteNetwork/endPoints.dart';
import 'package:new_news_app_apply/shared/constants.dart';

class SearchCubit extends Cubit<ShopStates> {
  SearchCubit() : super(InitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? searchModel;
  void getSearchData(String searchText){
    emit(SearchLoadingState());
    DioHelper.postData(
        url: SEARCH,
        token: token,
        data: {
          'text':'$searchText',
        }
    ).then((value){
      searchModel = SearchModel.fromJson(value.data);
      print('Search '+searchModel!.status.toString());
      emit(SearchSuccessState());
    }).catchError((error){
      emit(SearchErrorState());
      print(error.toString());
    });
  }
}