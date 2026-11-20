# language: es
@EP04 @US13
Característica: Reservar una cita
  Como cliente autenticado
  Quiero reservar un servicio con un barbero
  Para asegurar mi atención con anticipación

  Antecedentes:
    Dado que el cliente ha iniciado sesión

  @CA1
  Escenario: Confirmar una reserva con un horario libre
    Dado que el horario "10:00 - 11:00" del "Mar 01 dic 2026" está libre
    Y que el resumen indica el barbero "Luis Rojas"
    Y que el servicio es "Corte y barba" con los productos "Cera mate, Aceite"
    Y que el precio total es "S/ 40.00"
    Cuando confirma el resumen de la reserva
    Entonces se registra una cita en estado "Confirmada" con identificador
    Y se ocupa el intervalo completo "10:00 - 11:00"
    Y se muestra la pantalla "Reserva confirmada"

  @CA2
  Escenario: Dos clientes confirman intervalos superpuestos
    Dado que dos clientes confirman intervalos superpuestos del mismo barbero
    Cuando el sistema procesa ambas solicitudes
    Entonces solo se confirma una reserva
    Y la otra recibe un aviso para elegir otro horario

  @CA3
  Esquema del escenario: No se crea la reserva con datos inválidos
    Dado que el resumen tiene <situación>
    Cuando el cliente intenta confirmar la reserva
    Entonces no se crea la reserva
    Y se identifica la corrección necesaria

    Ejemplos:
      | situación         |
      | datos faltantes   |
      | un horario pasado |
