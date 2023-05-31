import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_diseases/repository/articles.dart';
import 'package:search_diseases/repository/attributes.dart';
import 'package:search_diseases/repository/data.dart';
import 'package:search_diseases/repository/wallpaper.dart';
import 'package:search_diseases/repository/wallpaper_attributes.dart';

part 'search_diseases_state.dart';

class SearchDiseasesCubit extends Cubit<SearchDiseasesState> {
  SearchDiseasesCubit() : super(SearchDiseasesInitialState());

  // allArticles = Hive.box<Articles>('Articles');

  TextEditingController passwordController = TextEditingController();

  List<Articles> searchDiseases = [];

  searchAllDiseases(String searchTitle) {
    searchDiseases = [];
    for (int i = 0; i < listDiseases.length; i++) {
      if (listDiseases[i].attributes?.symptoms?.contains(searchTitle) ?? false) {
        searchDiseases.add(listDiseases[i]);
      }
    }
    emiInitialState();
  }

  emiInitialState() {
    emit(SearchDiseasesInitialState());
  }

  List<Articles> listDiseases = [
    Articles(
        id: 1,
        attributes: Attributes(
            title: 'spazma',
            symptoms: 'Increased temperature, pain all over the body',
            cause: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            consequences: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 2,
        attributes: Attributes(
            title: 'cancer',
            symptoms: 'Increased temperature, pain all over the body, severe fatigue',
            cause: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            consequences: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 3,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 4,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 5,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 6,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 7,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 8,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'cought',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 1,
        attributes: Attributes(
            title: 'spazma',
            symptoms: 'Increased temperature, pain all over the body',
            cause: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            consequences: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 2,
        attributes: Attributes(
            title: 'cancer',
            symptoms: 'Increased temperature, pain all over the body, severe fatigue',
            cause: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            consequences: 'Vielleicht wartest auch du darauf, dein Baby das erste Mal lächeln zu sehen? Oder hast du vielleicht das erste Lachen schon beobachten können? Ist es dann endlich so weit, wirst du wahrscheinlich gar nicht mehr genug davon bekommen. So ermutigst du deinen kleinen Sonnenschein, mehr zu lächeln:',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 11,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 12,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 13,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 14,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 15,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 16,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 17,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 18,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 19,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
    Articles(
        id: 20,
        attributes: Attributes(
            title: 'hello',
            symptoms: 'sick',
            intro: 'hello',
            wallpaper: Wallpaper(
                data: Data(attributes: WallpaperAttributes(url: 'https://img.freepik.com/free-photo/young-sick-man-staying-in-his-bed_23-2148944835.jpg?size=626&ext=jpg'))))),
  ];

}
