class Usuario {
  var tipo_usuario;
  var usuario;
  var contrasena;
  var correo_electronico;

  Usuario(
      {this.usuario,
      this.contrasena,
      this.tipo_usuario,
      this.correo_electronico});
}

List<Usuario> listaUsuarios = [
  Usuario(
      tipo_usuario: 'Empleado',
      usuario: 'Pipe',
      contrasena: '54321',
      correo_electronico: 'afelipe@gmail.com'),
  Usuario(
      tipo_usuario: 'Empleador',
      usuario: 'Andres',
      contrasena: '12345',
      correo_electronico: 'andres21@gmail.com'),
];
