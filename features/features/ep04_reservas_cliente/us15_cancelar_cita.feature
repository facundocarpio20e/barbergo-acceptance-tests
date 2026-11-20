# language: es
@EP04 @US15
Característica: Cancelar una cita
  Como cliente autenticado
  Quiero cancelar una reserva futura
  Para liberar el horario si no puedo asistir

  Antecedentes:
    Dado que el cliente ha iniciado sesión

  @CA1
  Escenario: Cancelar una cita propia confirmada que no ha comenzado
    Dado que tiene una cita propia "Confirmada" que no ha comenzado
    Cuando confirma la cancelación
    Entonces la cita cambia al estado "Cancelada"
    Y se libera el intervalo reservado

  @CA2
  Esquema del escenario: Rechazar la cancelación de una cita no cancelable
    Dado que tiene una cita <condición>
    Cuando intenta cancelarla
    Entonces se rechaza la operación
    Y se informa el motivo

    Ejemplos:
      | condición              |
      | atendida               |
      | cancelada              |
      | cuyo inicio ya pasó    |

  @CA3
  Escenario: Intentar cancelar una cita ajena
    Dado que existe una cita de otro cliente
    Cuando intenta cancelarla
    Entonces se deniega el acceso
    Y la reserva permanece intacta
