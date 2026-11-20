# language: es
@NoFuncional @NF02 @RC03
Característica: Integridad de agenda
  Como cliente
  Quiero que dos reservas no ocupen el mismo horario de un barbero
  Para asegurar que mi atención sea respetada

  @Integridad
  Escenario: Dos confirmaciones simultáneas sobre intervalos superpuestos
    Dado que dos clientes confirman al mismo tiempo intervalos superpuestos
    Y que ambos intervalos pertenecen al mismo barbero
    Cuando el sistema procesa las dos confirmaciones
    Entonces se acepta como máximo una reserva

  @Integridad
  Escenario: Cambio de horario fallido
    Dado que el cliente tiene una reserva confirmada
    Cuando el cambio de horario falla
    Entonces se conserva la reserva anterior
