import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://antiaiapp.azurewebsites.net/api";

  Future<List<dynamic>> userLogin(username, password) async {
    final response =
        await http.post(Uri.parse("$baseUrl/profiles/login/"), body: {
      "username": username,
      "password": password,
    });

    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> signUp(
      username, email, password, password_confirm) async {
    final response =
        await http.post(Uri.parse("$baseUrl/profiles/register/"), body: {
      "username": username,
      "email": email,
      "password": password,
      "password_confirm": password_confirm,
    });
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> otpValidate(issued_for, otp) async {
    final response =
        await http.post(Uri.parse("$baseUrl/profiles/validate/"), body: {
      "issued_for": issued_for,
      "otp": otp,
    });
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> attemptValidate(username, password) async {
    final response = await http.get(Uri.parse(
        "$baseUrl/profiles/attempt_validate/?username=$username&password=$password"));
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> profileList() async {
    final response = await http.get(
      Uri.parse("$baseUrl/profiles/list/"),
    );
    if (response.statusCode == 200) {
      return [true, []];
    }

    return [false, []];
  }

  Future<List<dynamic>> profilesDetail() async {
    final response = await http.get(
      Uri.parse("$baseUrl/profiles/detail"),
    );
    if (response.statusCode == 200) {
      return [true, []];
    }

    return [false, []];
  }

  // Future<List<dynamic>> profile_Attempt_rest_password() async {
  //   final response = await http.put(
  //     Uri.parse("$baseUrl/profiles/attempt_reset_password/"),
  //   );
  // }

  Future<List<dynamic>> profileResetPassword(
      email, issued_for, password, password_confirm, otp) async {
    final response =
        await http.put(Uri.parse("$baseUrl/profiles/reset_password/"), body: {
      "email": email,
      "issued_for": issued_for,
      "password": password,
      "password_confirm": password_confirm,
      "otp": otp,
    });
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> uploadPost(
      classified_name, media_url, created_by_user, caption) async {
    final response =
        await http.post(Uri.parse("$baseUrl/posts/list_create/"), body: {
      "classified_name": classified_name,
      "media_url": media_url,
      "created_by_user": created_by_user,
      "caption": caption,
    });
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }

  Future<List<dynamic>> postList() async {
    final response = await http.get(
      Uri.parse("$baseUrl/posts/list_create/"),
    );
    if (response.statusCode == 200) {
      return [true, []];
    }

    return [false, []];
  }

  Future<List<dynamic>> postByUuid() async {
    final response = await http.get(
      Uri.parse("$baseUrl/posts/c41ccaa3-e5fe-451d-a527-9b23bdf283c0/"),
    );
    if (response.statusCode == 200) {
      return [true, []];
    }

    return [false, []];
  }

  Future<List<dynamic>> deletePost() async {
    final response = await http.delete(
      Uri.parse("$baseUrl/posts/c41ccaa3-e5fe-451d-a527-9b23bdf283c0/"),
    );
    if (response.statusCode == 200) {
      return [true, []];
    }

    return [false, []];
  }

  Future<List<dynamic>> imgModelAttempt(file) async {
    final response =
        await http.post(Uri.parse("$baseUrl/img_model/img_models/"), body: {
      "file": file,
    });
    if (response.statusCode == 200) {
      return [true, jsonEncode(response.body)];
    }

    return [false, []];
  }
}
