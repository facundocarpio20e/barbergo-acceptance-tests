# language: es
@NoFuncional @NF04 @RC05
Característica: Uso móvil
  Como cliente
  Quiero buscar y reservar desde mi celular
  Para completar el flujo sin dificultad

  @Usabilidad
  Escenario: Flujo operable en pantalla angosta
    Dado que la pantalla tiene un ancho de 360 píxeles
    Cuando el cliente recorre el flujo de búsqueda y reserva
    Entonces el flujo es operable sin desplazamiento horizontal

  @Usabilidad
  Escenario: Errores comprensibles
    Dado que el cliente comete un error en el flujo de reserva
    Cuando se muestra el error
    Entonces se identifica el campo y la acción de corrección
