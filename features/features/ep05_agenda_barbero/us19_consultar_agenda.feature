# language: es
@EP05 @US19
Característica: Consultar agenda del barbero
  Como barbero
  Quiero consultar mis citas por fecha
  Para organizar mi jornada

  Antecedentes:
    Dado que el barbero ha iniciado sesión

  @CA1
  Escenario: Ver las citas propias de una fecha en orden cronológico
    Dado que tiene las siguientes citas el "Mar 01 dic 2026":
      | hora  | servicio      | cliente     | origen     | estado     |
      | 09:00 | Corte clásico | Ana Torres  | App        | Confirmada |
      | 10:00 | Corte y barba | Carlos Paz  | WhatsApp   | Confirmada |
      | 11:30 | Corte clásico | Marco Vela  | Presencial | Confirmada |
    Cuando abre su agenda en esa fecha
    Entonces ve horario, servicio, cliente, origen de la cita y estado
    Y las citas aparecen en orden cronológico: 09:00, 10:00 y 11:30

  @CA2
  Escenario: Fecha sin citas
    Dado que no tiene citas el "Mié 02 dic 2026"
    Cuando consulta la agenda de esa fecha
    Entonces se muestra el mensaje "No tienes citas para esta fecha"

  @CA3
  Escenario: Intentar consultar la agenda de otro barbero
    Dado que existe la agenda de otro barbero
    Cuando intenta consultarla
    Entonces se deniega el acceso
