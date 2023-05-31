part of 'search_diseases_cubit.dart';

abstract class SearchDiseasesState extends Equatable {
  const SearchDiseasesState();

  @override
  List<Object> get props => [DateTime.now().toIso8601String()];
}

class SearchDiseasesInitialState extends SearchDiseasesState {}

class SearchDiseasesLoadingState extends SearchDiseasesState {}

class SearchDiseasesLoadingMoreItemState extends SearchDiseasesState {}
