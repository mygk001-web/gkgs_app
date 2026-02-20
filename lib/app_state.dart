import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectLanguage = prefs.getString('ff_selectLanguage') ?? _selectLanguage;
    });
    _safeInit(() {
      _isExamMode = prefs.getBool('ff_isExamMode') ?? _isExamMode;
    });
    _safeInit(() {
      _likedQuestionId =
          prefs.getStringList('ff_likedQuestionId') ?? _likedQuestionId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _selectLanguage = '';
  String get selectLanguage => _selectLanguage;
  set selectLanguage(String value) {
    _selectLanguage = value;
    prefs.setString('ff_selectLanguage', value);
  }

  String _selectedSubject = '';
  String get selectedSubject => _selectedSubject;
  set selectedSubject(String value) {
    _selectedSubject = value;
  }

  int _currentQuestionIndex = 0;
  int get currentQuestionIndex => _currentQuestionIndex;
  set currentQuestionIndex(int value) {
    _currentQuestionIndex = value;
  }

  bool _isExamMode = false;
  bool get isExamMode => _isExamMode;
  set isExamMode(bool value) {
    _isExamMode = value;
    prefs.setBool('ff_isExamMode', value);
  }

  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String value) {
    _selectedCategory = value;
  }

  String _SelectedSubCategory = '';
  String get SelectedSubCategory => _SelectedSubCategory;
  set SelectedSubCategory(String value) {
    _SelectedSubCategory = value;
  }

  int _currentQuestionNumber = 0;
  int get currentQuestionNumber => _currentQuestionNumber;
  set currentQuestionNumber(int value) {
    _currentQuestionNumber = value;
  }

  List<String> _likedQuestionId = [];
  List<String> get likedQuestionId => _likedQuestionId;
  set likedQuestionId(List<String> value) {
    _likedQuestionId = value;
    prefs.setStringList('ff_likedQuestionId', value);
  }

  void addToLikedQuestionId(String value) {
    likedQuestionId.add(value);
    prefs.setStringList('ff_likedQuestionId', _likedQuestionId);
  }

  void removeFromLikedQuestionId(String value) {
    likedQuestionId.remove(value);
    prefs.setStringList('ff_likedQuestionId', _likedQuestionId);
  }

  void removeAtIndexFromLikedQuestionId(int index) {
    likedQuestionId.removeAt(index);
    prefs.setStringList('ff_likedQuestionId', _likedQuestionId);
  }

  void updateLikedQuestionIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    likedQuestionId[index] = updateFn(_likedQuestionId[index]);
    prefs.setStringList('ff_likedQuestionId', _likedQuestionId);
  }

  void insertAtIndexInLikedQuestionId(int index, String value) {
    likedQuestionId.insert(index, value);
    prefs.setStringList('ff_likedQuestionId', _likedQuestionId);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
