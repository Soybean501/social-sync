import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialNetworkRecord extends FirestoreRecord {
  SocialNetworkRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _username = snapshotData['username'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('socialNetwork')
          : FirebaseFirestore.instance.collectionGroup('socialNetwork');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('socialNetwork').doc(id);

  static Stream<SocialNetworkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SocialNetworkRecord.fromSnapshot(s));

  static Future<SocialNetworkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SocialNetworkRecord.fromSnapshot(s));

  static SocialNetworkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SocialNetworkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SocialNetworkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SocialNetworkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SocialNetworkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SocialNetworkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSocialNetworkRecordData({
  String? name,
  String? username,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'username': username,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}

class SocialNetworkRecordDocumentEquality
    implements Equality<SocialNetworkRecord> {
  const SocialNetworkRecordDocumentEquality();

  @override
  bool equals(SocialNetworkRecord? e1, SocialNetworkRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.username == e2?.username &&
        e1?.website == e2?.website;
  }

  @override
  int hash(SocialNetworkRecord? e) =>
      const ListEquality().hash([e?.name, e?.username, e?.website]);

  @override
  bool isValidKey(Object? o) => o is SocialNetworkRecord;
}
