# language: es
@NoFuncional @NF03 @RC04
Característica: Rendimiento de búsqueda y disponibilidad
  Como cliente
  Quiero que la búsqueda y la consulta de disponibilidad respondan con rapidez
  Para reservar sin esperas innecesarias

  @Rendimiento
  Escenario: Respuesta con carga concurrente
    Dado que hay veinte usuarios concurrentes
    Y que existen mil servicios activos
    Cuando se ejecutan consultas de búsqueda y de disponibilidad
    Entonces el 95 % de las consultas responde en hasta tres segundos
    Y se registran el entorno y los resultados de la prueba
