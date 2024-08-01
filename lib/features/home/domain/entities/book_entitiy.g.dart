// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entitiy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitiyAdapter extends TypeAdapter<BookEntitiy> {
  @override
  final int typeId = 0;

  @override
  BookEntitiy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntitiy(
      id: fields[0] as String?,
      image: fields[1] as String?,
      title: fields[2] as String?,
      authorName: fields[3] as String?,
      rating: fields[4] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntitiy obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.authorName)
      ..writeByte(4)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitiyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
