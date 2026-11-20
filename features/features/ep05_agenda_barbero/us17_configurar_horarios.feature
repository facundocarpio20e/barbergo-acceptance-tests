# language: es
@EP05 @US17
Característica: Configurar horarios de atención
  Como barbero
  Quiero definir mi jornada por día
  Para ofrecer horarios reales

  Antecedentes:
    Dado que el barbero ha iniciado sesión

  @CA1
  Escenario: Guardar una jornada válida
    Dado que define intervalos futuros con hora final posterior al inicio
    Cuando guarda su jornada
    Entonces la jornada queda disponible para calcular espacios reservables

  @CA2
  Escenario: Intervalos superpuestos en un mismo día
    Dado que define intervalos superpuestos en un mismo día
    Cuando guarda su jornada
    Entonces se rechazan los intervalos en conflicto

  @CA3
  Escenario: Reducir la jornada con reservas confirmadas afectadas
    Dado que existen reservas confirmadas dentro del tramo que se reduce
    Cuando guarda el cambio
    Entonces se bloquea la modificación
    Y se identifican las citas afectadas
