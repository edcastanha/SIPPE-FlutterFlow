// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perfil_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PerfilRecord> _$perfilRecordSerializer =
    new _$PerfilRecordSerializer();

class _$PerfilRecordSerializer implements StructuredSerializer<PerfilRecord> {
  @override
  final Iterable<Type> types = const [PerfilRecord, _$PerfilRecord];
  @override
  final String wireName = 'PerfilRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PerfilRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PerfilRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PerfilRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PerfilRecord extends PerfilRecord {
  @override
  final int? id;
  @override
  final String? titulo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PerfilRecord([void Function(PerfilRecordBuilder)? updates]) =>
      (new PerfilRecordBuilder()..update(updates))._build();

  _$PerfilRecord._({this.id, this.titulo, this.ffRef}) : super._();

  @override
  PerfilRecord rebuild(void Function(PerfilRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerfilRecordBuilder toBuilder() => new PerfilRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerfilRecord &&
        id == other.id &&
        titulo == other.titulo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerfilRecord')
          ..add('id', id)
          ..add('titulo', titulo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PerfilRecordBuilder
    implements Builder<PerfilRecord, PerfilRecordBuilder> {
  _$PerfilRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PerfilRecordBuilder() {
    PerfilRecord._initializeBuilder(this);
  }

  PerfilRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _titulo = $v.titulo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerfilRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerfilRecord;
  }

  @override
  void update(void Function(PerfilRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerfilRecord build() => _build();

  _$PerfilRecord _build() {
    final _$result =
        _$v ?? new _$PerfilRecord._(id: id, titulo: titulo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
