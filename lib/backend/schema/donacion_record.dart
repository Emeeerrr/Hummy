import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donacion_record.g.dart';

abstract class DonacionRecord
    implements Built<DonacionRecord, DonacionRecordBuilder> {
  static Serializer<DonacionRecord> get serializer =>
      _$donacionRecordSerializer;

  String? get type;

  double? get units;

  String? get address;

  DateTime? get hour;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get donacionid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DonacionRecordBuilder builder) => builder
    ..type = ''
    ..units = 0.0
    ..address = ''
    ..donacionid = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('donacion')
          : FirebaseFirestore.instance.collectionGroup('donacion');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('donacion').doc();

  static Stream<DonacionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DonacionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DonacionRecord._();
  factory DonacionRecord([void Function(DonacionRecordBuilder) updates]) =
      _$DonacionRecord;

  static DonacionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDonacionRecordData({
  String? type,
  double? units,
  String? address,
  DateTime? hour,
  DateTime? createdTime,
  String? donacionid,
}) {
  final firestoreData = serializers.toFirestore(
    DonacionRecord.serializer,
    DonacionRecord(
      (d) => d
        ..type = type
        ..units = units
        ..address = address
        ..hour = hour
        ..createdTime = createdTime
        ..donacionid = donacionid,
    ),
  );

  return firestoreData;
}
