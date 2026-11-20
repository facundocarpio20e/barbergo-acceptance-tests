# language: es
@EP04 @US16
Característica: Reprogramar una cita
  Como cliente autenticado
  Quiero cambiar el horario de una reserva futura
  Para adaptarla a mi disponibilidad

  Antecedentes:
    Dado que el cliente ha iniciado sesión

  @CA1
  Escenario: Cambiar a un nuevo intervalo libre
    Dado que tiene una cita propia confirmada y futura
    Y que existe un nuevo intervalo libre para el mismo barbero y servicio
    Cuando confirma el cambio
    Entonces se ocupa el nuevo intervalo
    Y se libera el intervalo anterior en una sola operación

  @CA2
  Escenario: El nuevo intervalo se ocupa antes de confirmar
    Dado que el nuevo intervalo fue ocupado antes de confirmar el cambio
    Cuando solicita el cambio
    Entonces se conserva la reserva original
    Y se pide elegir otro horario

  @CA3
  Esquema del escenario: Rechazar el cambio de una cita no reprogramable
    Dado que tiene una cita ya <estado>
    Cuando intenta reprogramarla
    Entonces se rechaza el cambio

    Ejemplos:
      | estado   |
      | atendida |
      | iniciada |
