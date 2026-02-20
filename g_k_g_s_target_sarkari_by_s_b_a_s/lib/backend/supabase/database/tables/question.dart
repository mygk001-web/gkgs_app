import '../database.dart';

class QuestionTable extends SupabaseTable<QuestionRow> {
  @override
  String get tableName => 'question';

  @override
  QuestionRow createRow(Map<String, dynamic> data) => QuestionRow(data);
}

class QuestionRow extends SupabaseDataRow {
  QuestionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QuestionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get questionId => getField<String>('question_id');
  set questionId(String? value) => setField<String>('question_id', value);

  String? get languageCode => getField<String>('language_code');
  set languageCode(String? value) => setField<String>('language_code', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get subCategory => getField<String>('sub_category');
  set subCategory(String? value) => setField<String>('sub_category', value);

  String? get questionText => getField<String>('question_text');
  set questionText(String? value) => setField<String>('question_text', value);

  String? get optionA => getField<String>('option_a');
  set optionA(String? value) => setField<String>('option_a', value);

  String? get optionB => getField<String>('option_b');
  set optionB(String? value) => setField<String>('option_b', value);

  String? get optionC => getField<String>('option_c');
  set optionC(String? value) => setField<String>('option_c', value);

  String? get optionD => getField<String>('option_d');
  set optionD(String? value) => setField<String>('option_d', value);

  String? get correctAnswer => getField<String>('correct_answer');
  set correctAnswer(String? value) => setField<String>('correct_answer', value);

  String? get explanation => getField<String>('explanation');
  set explanation(String? value) => setField<String>('explanation', value);
}
