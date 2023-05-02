// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fundaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FundacionesRecord> _$fundacionesRecordSerializer =
    new _$FundacionesRecordSerializer();

class _$FundacionesRecordSerializer
    implements StructuredSerializer<FundacionesRecord> {
  @override
  final Iterable<Type> types = const [FundacionesRecord, _$FundacionesRecord];
  @override
  final String wireName = 'FundacionesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FundacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripshort;
    if (value != null) {
      result
        ..add('descripshort')
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
  FundacionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FundacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripshort':
          result.descripshort = serializers.deserialize(value,
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

class _$FundacionesRecord extends FundacionesRecord {
  @override
  final String? nombre;
  @override
  final String? descripcion;
  @override
  final String? imagen;
  @override
  final String? id;
  @override
  final String? descripshort;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FundacionesRecord(
          [void Function(FundacionesRecordBuilder)? updates]) =>
      (new FundacionesRecordBuilder()..update(updates))._build();

  _$FundacionesRecord._(
      {this.nombre,
      this.descripcion,
      this.imagen,
      this.id,
      this.descripshort,
      this.ffRef})
      : super._();

  @override
  FundacionesRecord rebuild(void Function(FundacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FundacionesRecordBuilder toBuilder() =>
      new FundacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FundacionesRecord &&
        nombre == other.nombre &&
        descripcion == other.descripcion &&
        imagen == other.imagen &&
        id == other.id &&
        descripshort == other.descripshort &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, descripshort.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FundacionesRecord')
          ..add('nombre', nombre)
          ..add('descripcion', descripcion)
          ..add('imagen', imagen)
          ..add('id', id)
          ..add('descripshort', descripshort)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FundacionesRecordBuilder
    implements Builder<FundacionesRecord, FundacionesRecordBuilder> {
  _$FundacionesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _descripshort;
  String? get descripshort => _$this._descripshort;
  set descripshort(String? descripshort) => _$this._descripshort = descripshort;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FundacionesRecordBuilder() {
    FundacionesRecord._initializeBuilder(this);
  }

  FundacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _descripcion = $v.descripcion;
      _imagen = $v.imagen;
      _id = $v.id;
      _descripshort = $v.descripshort;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FundacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FundacionesRecord;
  }

  @override
  void update(void Function(FundacionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FundacionesRecord build() => _build();

  _$FundacionesRecord _build() {
    final _$result = _$v ??
        new _$FundacionesRecord._(
            nombre: nombre,
            descripcion: descripcion,
            imagen: imagen,
            id: id,
            descripshort: descripshort,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
