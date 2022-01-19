class Historico {
//  DateTime createdAt;
  int hisIdPaciente;
  String hisPathThumb;
  String hisPathServer;
  bool hisFoto;

  Historico({
//    required this.createdAt,
    required this.hisIdPaciente,
    required this.hisPathThumb,
    required this.hisPathServer,
    required this.hisFoto,
  });

  factory Historico.fromJson(Map<String, dynamic> map) {
    return Historico(
//      createdAt: map['createdAt'.toString()],
      hisIdPaciente: map['hisIdPaciente'.toString()],
      hisPathThumb: map['hisPathThumb'.toString()],
      hisPathServer: map['hisPathServer'.toString()],
      hisFoto: map['hisFoto'],
    );
  }
}
