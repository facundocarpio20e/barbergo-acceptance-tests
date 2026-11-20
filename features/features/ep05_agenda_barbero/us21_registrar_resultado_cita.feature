# language: es
@EP05 @US21
Característica: Registrar resultado de una cita
  Como barbero
  Quiero marcar una cita como atendida o inasistencia
  Para mantener un registro real de mi actividad

  Antecedentes:
    Dado que el barbero ha iniciado sesión

  @CA1
  Escenario: Marcar una cita como atendida
    Dado que tiene una cita propia confirmada cuyo fin programado ya pasó
    Cuando la marca "Atendida"
    Entonces se guarda el estado
    Y queda disponible para el historial del cliente con cuenta

  @CA2
  Escenario: Marcar una cita como inasistencia
    Dado que tiene una cita propia confirmada cuyo fin programado ya pasó
    Cuando la marca "Inasistencia"
    Entonces se guarda el estado
    Y no se habilita reseña

  @CA3
  Esquema del escenario: Rechazar el resultado de una cita no elegible
    Dado que la cita es <condición>
    Cuando intenta marcar su resultado
    Entonces se rechaza la transición

    Ejemplos:
      | condición |
      | futura    |
      | cancelada |
