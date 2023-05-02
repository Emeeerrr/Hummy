// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donacion_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonacionRecord> _$donacionRecordSerializer =
    new _$DonacionRecordSerializer();

class _$DonacionRecordSerializer
    implements StructuredSerializer<DonacionRecord> {
  @override
  final Iterable<Type> types = const [DonacionRecord, _$DonacionRecord];
  @override
  final String wireName = 'DonacionRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DonacionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.units;
    if (value != null) {
      result
        ..add('units')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hour;
    if (value != null) {
      result
        ..add('hour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.donacionid;
    if (value != null) {
      result
        ..add('donacionid')
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
  DonacionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonacionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'units':
          result.units = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hour':
          result.hour = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'donacionid':
          result.donacionid = serializers.deserialize(value,
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

class _$DonacionRecord extends DonacionRecord {
  @override
  final String? type;
  @override
  final double? units;
  @override
  final String? address;
  @override
  final DateTime? hour;
  @override
  final DateTime? createdTime;
  @override
  final String? donacionid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DonacionRecord([void Function(DonacionRecordBuilder)? updates]) =>
      (new DonacionRecordBuilder()..update(updates))._build();

  _$DonacionRecord._(
      {this.type,
      this.units,
      this.address,
      this.hour,
      this.createdTime,
      this.donacionid,
      this.ffRef})
      : super._();

  @override
  DonacionRecord rebuild(void Function(DonacionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonacionRecordBuilder toBuilder() =>
      new DonacionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonacionRecord &&
        type == other.type &&
        units == other.units &&
        address == other.address &&
        hour == other.hour &&
        createdTime == other.createdTime &&
        donacionid == other.donacionid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, donacionid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonacionRecord')
          ..add('type', type)
          ..add('units', units)
          ..add('address', address)
          ..add('hour', hour)
          ..add('createdTime', createdTime)
          ..add('donacionid', donacionid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DonacionRecordBuilder
    implements Builder<DonacionRecord, DonacionRecordBuilder> {
  _$DonacionRecord? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  double? _units;
  double? get units => _$this._units;
  set units(double? units) => _$this._units = units;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  DateTime? _hour;
  DateTime? get hour => _$this._hour;
  set hour(DateTime? hour) => _$this._hour = hour;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _donacionid;
  String? get donacionid => _$this._donacionid;
  set donacionid(String? donacionid) => _$this._donacionid = donacionid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DonacionRecordBuilder() {
    DonacionRecord._initializeBuilder(this);
  }

  DonacionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _units = $v.units;
      _address = $v.address;
      _hour = $v.hour;
      _createdTime = $v.createdTime;
      _donacionid = $v.donacionid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonacionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonacionRecord;
  }

  @override
  void update(void Function(DonacionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonacionRecord build() => _build();

  _$DonacionRecord _build() {
    final _$result = _$v ??
        new _$DonacionRecord._(
            type: type,
            units: units,
            address: address,
            hour: hour,
            createdTime: createdTime,
            donacionid: donacionid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
