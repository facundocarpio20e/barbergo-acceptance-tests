# language: es
@NoFuncional @NF01 @RC01
Característica: Control de acceso
  Como usuario de BarberGo
  Quiero que mis citas, perfiles e historiales solo sean accesibles con mi identidad
  Para proteger mi información

  @Seguridad
  Escenario: Leer información con un identificador ajeno
    Dado que el usuario ha iniciado sesión
    Cuando intenta leer una cita o perfil con un identificador que no le pertenece
    Entonces el servidor no entrega información

  @Seguridad
  Escenario: Modificar información con un identificador ajeno
    Dado que el usuario ha iniciado sesión
    Cuando intenta modificar una cita o perfil con un identificador que no le pertenece
    Entonces el servidor no realiza la modificación
