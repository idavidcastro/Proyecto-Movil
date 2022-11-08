class Vacante {
  var titulo;
  var descripcion;
  var salario;
  var ciudad;

  Vacante({this.titulo, this.descripcion, this.salario, this.ciudad});
}

List<Vacante> listaVacantes = [
  Vacante(
      titulo: 'Axuliar de enfermería',
      descripcion: 'Se busca axuliar en enfermería',
      salario: '1.200.000',
      ciudad: 'Valledupar'),
  Vacante(
      titulo: 'Gerente prestigiosa empresa',
      descripcion: 'Se busca gerente en enfermería',
      salario: '2.000.000',
      ciudad: 'Barranquilla'),
  Vacante(
      titulo: 'Ingeniero de sistemas',
      descripcion: 'Se busca ingeniero de sistemas en enfermería',
      salario: '5.000.000',
      ciudad: 'Bogotá'),
];
