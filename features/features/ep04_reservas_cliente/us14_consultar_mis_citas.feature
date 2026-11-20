# language: es
@EP04 @US14
Característica: Consultar mis citas
  Como cliente autenticado
  Quiero ver mis reservas y sus estados
  Para organizar mis próximas visitas

  Antecedentes:
    Dado que el cliente ha iniciado sesión

  @CA1
  Escenario: Ver citas propias
    Dado que el cliente tiene citas registradas a su nombre
    Cuando abre "Mis citas"
    Entonces ve barbero, servicio, fecha, hora, precio y estado de cada cita

  @CA2
  Escenario: Intentar abrir una cita ajena
    Dado que existe una cita de otro cliente
    Cuando intenta abrirla por su identificador
    Entonces se deniega el acceso

  @CA3
  Escenario: Cliente sin citas
    Dado que el cliente no tiene ninguna cita registrada
    Cuando abre "Mis citas"
    Entonces se muestra el mensaje "Aún no tienes citas"
