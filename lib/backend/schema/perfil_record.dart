import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'perfil_record.g.dart';

abstract class PerfilRecord
    implements Built<PerfilRecord, PerfilRecordBuilder> {
  static Serializer<PerfilRecord> get serializer => _$perfilRecordSerializer;

  int? get id;

  String? get titulo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PerfilRecordBuilder builder) => builder
    ..id = 0
    ..titulo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('perfil');

  static Stream<PerfilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PerfilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PerfilRecord._();
  factory PerfilRecord([void Function(PerfilRecordBuilder) updates]) =
      _$PerfilRecord;

  static PerfilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPerfilRecordData({
  int? id,
  String? titulo,
}) {
  final firestoreData = serializers.toFirestore(
    PerfilRecord.serializer,
    PerfilRecord(
      (p) => p
        ..id = id
        ..titulo = titulo,
    ),
  );

  return firestoreData;
}
