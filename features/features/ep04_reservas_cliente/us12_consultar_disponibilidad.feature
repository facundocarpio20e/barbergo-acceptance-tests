# language: es
@EP04 @US12
Característica: Consultar disponibilidad según el servicio
  Como cliente
  Quiero ver horarios que permitan completar el servicio elegido
  Para seleccionar una cita viable

  Antecedentes:
    Dado que el cliente consulta al barbero "Luis Rojas"
    Y que selecciona el servicio "Corte clásico" de 30 min

  @CA1
  Escenario: Se ofrecen solo horarios que permiten completar el servicio
    Dado que selecciona la fecha futura "Mar 01 dic 2026"
    Y que el intervalo de las "10:00" ya está ocupado
    Cuando consulta los horarios disponibles
    Entonces se muestran inicios dentro de la jornada del barbero
    Y cada inicio permite completar toda la duración sin solapamientos
    Y no se ofrece el horario "10:00"

  @CA2
  Escenario: Día sin intervalos suficientes
    Dado que el barbero no tiene intervalos suficientes el "Mié 02 dic 2026"
    Cuando el cliente consulta los horarios de esa fecha
    Entonces se muestra el mensaje "No hay disponibilidad para este día"
    Y el botón "Continuar" permanece deshabilitado

  @CA3
  Escenario: Un intervalo recién ocupado deja de ofrecerse
    Dado que se registró una nueva reserva o bloqueo en el horario "11:00"
    Cuando el cliente actualiza la consulta
    Entonces el intervalo ocupado deja de ofrecerse
