import '../database.dart';

class GsTable extends SupabaseTable<GsRow> {
  @override
  String get tableName => 'gs';

  @override
  GsRow createRow(Map<String, dynamic> data) => GsRow(data);
}

class GsRow extends SupabaseDataRow {
  GsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GsTable();

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

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
