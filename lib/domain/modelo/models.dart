class Usuario {
  var tipo_usuario;
  var usuarioo;
  var contrasena;
  var correo_electronico;

  Usuario(
      {this.usuarioo,
      this.contrasena,
      this.tipo_usuario,
      this.correo_electronico});
}

List<Usuario> listaUsuario = [
  Usuario(
      tipo_usuario: 'empleado',
      usuarioo: 'Pipe',
      contrasena: '54321',
      correo_electronico: 'afelipe@gmial.com'),
  Usuario(
      tipo_usuario: 'empleador',
      usuarioo: 'Andres',
      contrasena: '12345',
      correo_electronico: 'andres21@gmial.com'),
];