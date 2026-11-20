# language: es
@EP05 @US18
Característica: Bloquear períodos no disponibles
  Como barbero
  Quiero bloquear descansos o ausencias
  Para evitar reservas cuando no puedo atender

  Antecedentes:
    Dado que el barbero ha iniciado sesión

  @CA1
  Escenario: Registrar un bloqueo en un intervalo libre
    Dado que tiene un intervalo libre dentro de su jornada
    Cuando registra un bloqueo
    Entonces ese intervalo deja de ofrecerse al cliente

  @CA2
  Escenario: Bloqueo que se superpone a una reserva confirmada
    Dado que el bloqueo se superpone a una reserva confirmada
    Cuando intenta guardarlo
    Entonces se rechaza el bloqueo
    Y se identifica la reserva afectada

  @CA3
  Escenario: Retirar un bloqueo propio sin reservas
    Dado que tiene un bloqueo propio sin reservas en su intervalo
    Cuando lo retira
    Entonces el intervalo vuelve a participar en el cálculo de disponibilidad
