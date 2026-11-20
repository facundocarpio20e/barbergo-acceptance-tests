# language: es
@EP05 @US20
Característica: Registrar atención de otro canal
  Como barbero
  Quiero registrar una cita de WhatsApp o presencial
  Para evitar cruces con las reservas de la app

  Antecedentes:
    Dado que el barbero ha iniciado sesión

  @CA1
  Escenario: Registrar una cita externa en un intervalo libre
    Dado que indica servicio, nombre de cliente, fecha y un intervalo libre
    Cuando registra la cita externa
    Entonces se crea una cita confirmada con origen externo
    Y se ocupa el intervalo completo

  @CA2
  Escenario: Intervalo ya ocupado
    Dado que el intervalo elegido ya está ocupado
    Cuando intenta registrar la atención
    Entonces se rechaza por superposición

  @CA3
  Escenario: Cliente sin cuenta
    Dado que el cliente no tiene cuenta en la aplicación
    Cuando registra la cita externa
    Entonces puede guardar solo su nombre sin exigir cuenta
    Y no se habilita reseña verificada ni historial de cuenta por esa atención
