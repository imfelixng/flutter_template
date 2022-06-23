import 'package:domain_entity/domain_entity.dart';

abstract class WeatherRepository {
  Future<List<City>> searchCities(String searchTerm);

  Stream<List<City>> getFavoriteCitiesStream();

  Future<List<City>> getFavoriteCitiesList();

  Future<void> setCityAsFavorite(City city);

  Future<void> removeCityAsFavorite(City city);

  Future<void> fetchWeatherForFavoriteCities();

  Future<List<Weather>> getFavoriteCitiesWeatherList();

  Stream<List<Weather>> getFavoriteCitiesWeatherStream();
}