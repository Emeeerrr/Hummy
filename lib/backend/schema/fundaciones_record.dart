import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fundaciones_record.g.dart';

abstract class FundacionesRecord
    implements Built<FundacionesRecord, FundacionesRecordBuilder> {
  static Serializer<FundacionesRecord> get serializer =>
      _$fundacionesRecordSerializer;

  String? get nombre;

  String? get descripcion;

  String? get imagen;

  String? get id;

  String? get descripshort;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FundacionesRecordBuilder builder) => builder
    ..nombre = ''
    ..descripcion = ''
    ..imagen = ''
    ..id = ''
    ..descripshort = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fundaciones');

  static Stream<FundacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FundacionesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FundacionesRecord._();
  factory FundacionesRecord([void Function(FundacionesRecordBuilder) updates]) =
      _$FundacionesRecord;

  static FundacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFundacionesRecordData({
  String? nombre,
  String? descripcion,
  String? imagen,
  String? id,
  String? descripshort,
}) {
  final firestoreData = serializers.toFirestore(
    FundacionesRecord.serializer,
    FundacionesRecord(
      (f) => f
        ..nombre = nombre
        ..descripcion = descripcion
        ..imagen = imagen
        ..id = id
        ..descripshort = descripshort,
    ),
  );

  return firestoreData;
}
