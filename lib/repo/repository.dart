import 'dart:convert';

import 'package:api/model/PhotosModel.dart';
import 'package:api/model/albummodel.dart';
import 'package:http/http.dart' as http;

import '../model/model.dart';
import '../model/postmodel.dart';
import '../model/usermodel.dart';

class MyRepository {
  var baseUrl = 'https://reqres.in/api/users';

  // Replace with your API endpoint

  Future<List<UserModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl)); // Use the correct URL

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['data'];
      // Extract 'data' from the JSON response

      return data.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

class AlbumRepository {
  var baseUrl = 'https://jsonplaceholder.typicode.com/albums';
  // Replace with your API endpoint

  Future<List<AlbumModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl)); // Use the correct URL

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
     print(data);

      return data.map((e) => AlbumModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

class PostRepository {
  var baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  // Replace with your API endpoint

  Future<List<PostModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl)); // Use the correct URL

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // Extract 'data' from the JSON response

      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

class PhotosRepository {
  var baseUrl = 'https://jsonplaceholder.typicode.com/photos';
  // Replace with your API endpoint

  Future<List<PhotosModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl)); // Use the correct URL

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // Extract 'data' from the JSON response

      return data.map((e) => PhotosModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

class UserJsonRepository {
  var baseUrl = 'https://jsonplaceholder.typicode.com/users';
  // Replace with your API endpoint

  Future<List<UserJsonModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl)); // Use the correct URL

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // Extract 'data' from the JSON response

      return data.map((e) => UserJsonModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
