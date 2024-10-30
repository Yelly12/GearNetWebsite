US01 - Registro de dispositivos

Feature: Registro de dispositivos en la plataforma

  Scenario: Registrar un nuevo dispositivo
    Given soy el dueño de la empresa y accedo a la plataforma
    When navego a la sección de "Registro de Dispositivos" e ingreso los datos del dispositivo
    Then el sistema guarda el dispositivo en la base de datos y lo muestra en la lista de dispositivos

    Example:
      | Acción               | Resultado                                        |
      | Registrar dispositivo| Dispositivo registrado y visible en la lista     |

    Input:
      usuario: dueño de la empresa que accede a la plataforma
      proceso de detección: navegación a la sección de "Registro de Dispositivos" e ingreso de datos del dispositivo

    Output:
      mensaje: dispositivo registrado exitosamente
      acción: el dispositivo se muestra en la lista de dispositivos


US02 - Asignación de dispositivos

Feature: Asignación de dispositivo a empleado

  Scenario: Asignar un dispositivo registrado a un empleado
    Given soy el dueño de la empresa con dispositivos registrados
    When selecciono un dispositivo y asigno un empleado
    Then el sistema muestra una confirmación de asignación exitosa

    Example:
      | Acción                | Resultado                                        |
      | Asignar dispositivo   | Dispositivo asignado al empleado                 |

    Input:
      usuario: dueño de la empresa con dispositivos registrados
      proceso de detección: selección de un dispositivo y asignación de un empleado

    Output:
      mensaje: asignación exitosa del dispositivo
      acción: el dispositivo se asigna al empleado seleccionado


US03 - Configuración de alertas de mantenimiento

Feature: Configuración de alertas de mantenimiento preventivo

  Scenario: Configurar alerta para mantenimiento de dispositivo
    Given tengo dispositivos registrados en la plataforma
    When configuro una alerta de mantenimiento preventivo para un dispositivo
    Then el sistema guarda la alerta y muestra la próxima fecha de mantenimiento

    Example:
      | Acción                     | Resultado                                    |
      | Configurar alerta          | Alerta guardada con próxima fecha de mantenimiento |

    Input:
      usuario: propietario con dispositivos registrados
      proceso de detección: configuración de una alerta de mantenimiento preventivo

    Output:
      mensaje: alerta guardada exitosamente
      acción: próxima fecha de mantenimiento mostrada


US04 - Generación de informes de estado

Feature: Generación de informe de estado de dispositivos

  Scenario: Generar informe del estado actual de los dispositivos
    Given deseo conocer el estado de los dispositivos de mi empresa
    When solicito un informe de estado en la plataforma
    Then el sistema genera un informe con el estado actual de cada dispositivo

    Example:
      | Acción                | Resultado                                  |
      | Generar informe       | Informe de estado generado                 |

    Input:
      usuario: propietario que desea conocer el estado de los dispositivos
      proceso de detección: solicitud de un informe de estado en la plataforma

    Output:
      mensaje: informe generado exitosamente
      acción: el informe de estado se presenta al usuario


US05 - Programación de mantenimientos

Feature: Programación de mantenimiento preventivo

  Scenario: Programar un mantenimiento para un dispositivo
    Given deseo programar el mantenimiento de un dispositivo
    When configuro la fecha y hora en la plataforma
    Then el sistema guarda el mantenimiento y lo asocia con el dispositivo seleccionado

    Example:
      | Acción                | Resultado                                   |
      | Programar mantenimiento | Mantenimiento programado y registrado     |

    Input:
      usuario: propietario que desea programar mantenimiento
      proceso de detección: configuración de la fecha y hora en la plataforma

    Output:
      mensaje: mantenimiento programado exitosamente
      acción: el mantenimiento se asocia con el dispositivo seleccionado


US06 - Desvinculación de dispositivos obsoletos

Feature: Desvinculación de dispositivos obsoletos

  Scenario: Desvincular un dispositivo obsoleto de la plataforma
    Given soy el dueño de la empresa con dispositivos obsoletos registrados
    When selecciono un dispositivo y elijo la opción de "Desvincular"
    Then el sistema elimina el dispositivo de la lista activa y actualiza el registro

    Example:
      | Acción             | Resultado                                          |
      | Desvincular dispositivo | Dispositivo eliminado de la lista activa      |

    Input:
      usuario: dueño de la empresa con dispositivos obsoletos
      proceso de detección: selección de un dispositivo y elección de "Desvincular"

    Output:
      mensaje: dispositivo desvinculado exitosamente
      acción: dispositivo eliminado de la lista activa


US07 - Creación de solicitudes de reparación

Feature: Creación de solicitud de reparación

  Scenario: Crear una solicitud de reparación para un dispositivo defectuoso
    Given tengo un dispositivo que presenta un problema
    When ingreso a la plataforma y creo una solicitud de reparación
    Then el sistema guarda la solicitud y muestra un mensaje de confirmación

    Example:
      | Acción                   | Resultado                                        |
      | Crear solicitud de reparación | Solicitud registrada y confirmada           |

    Input:
      usuario: propietario con un dispositivo defectuoso
      proceso de detección: creación de una solicitud de reparación en la plataforma

    Output:
      mensaje: solicitud de reparación registrada exitosamente
      acción: mensaje de confirmación mostrado al usuario


US08 - Asignación de reparaciones a técnicos específicos

Feature: Asignación de reparaciones a técnicos específicos

  Scenario: Asignar una reparación a un técnico disponible
    Given tengo una solicitud de reparación registrada
    When selecciono un técnico específico y asigno la reparación
    Then el sistema actualiza la solicitud y muestra el nombre del técnico asignado

    Example:
      | Acción                   | Resultado                                          |
      | Asignar reparación       | Técnico asignado y visible en la solicitud          |

    Input:
      usuario: propietario con una solicitud de reparación
      proceso de detección: selección de un técnico y asignación de la reparación

    Output:
      mensaje: asignación de reparación exitosa
      acción: nombre del técnico asignado mostrado en la solicitud


US09 - Visualización del progreso de la reparación en tiempo real

Feature: Visualización del progreso de la reparación

  Scenario: Monitorear el progreso de una reparación en curso
    Given tengo una reparación en progreso
    When accedo a la sección de detalles de la reparación
    Then veo una barra de progreso que indica el estado actual de la reparación

    Example:
      | Acción                | Resultado                                       |
      | Monitorear reparación | Progreso en tiempo real visible                 |

    Input:
      usuario: propietario con una reparación en progreso
      proceso de detección: acceso a la sección de detalles de la reparación

    Output:
      mensaje: barra de progreso mostrada
      acción: estado actual de la reparación visible


US10 - Recepción de notificaciones de cambios en el estado de la reparación

Feature: Notificación de cambio de estado en reparación

  Scenario: Recibir notificación cuando hay un cambio en el estado de la reparación
    Given una reparación tiene un cambio de estado (por ejemplo, en progreso a completado)
    When el estado de la reparación cambia
    Then recibo una notificación que indica el nuevo estado

    Example:
      | Acción                       | Resultado                                       |
      | Recibir notificación         | Notificación del cambio de estado recibida      |

    Input:
      usuario: propietario de la reparación
      proceso de detección: cambio en el estado de la reparación

    Output:
      mensaje: notificación de cambio de estado recibida
      acción: nuevo estado de la reparación mostrado


US11 - Confirmación de reparaciones finalizadas

Feature: Confirmación de reparaciones finalizadas

  Scenario: Confirmar que una reparación ha sido finalizada
    Given tengo una solicitud de reparación en estado "en progreso"
    When el técnico indica que la reparación ha finalizado
    Then el sistema cambia el estado de la solicitud a "completada" y me permite confirmarla

    Example:
      | Acción                | Resultado                                       |
      | Confirmar reparación  | Solicitud marcada como finalizada y completada  |

    Input:
      usuario: propietario con solicitud en progreso
      proceso de detección: técnico indica finalización de la reparación

    Output:
      mensaje: estado de la solicitud cambiado a "completada"
      acción: opción para confirmar la finalización disponible


US12 - Evaluación del servicio

Feature: Evaluación del servicio

  Scenario: Evaluar el servicio recibido después de una reparación
    Given he recibido una notificación de finalización de reparación
    When accedo a la solicitud y selecciono la opción para evaluar el servicio
    Then el sistema permite calificar el servicio y dejar comentarios

    Example:
      | Acción            | Resultado                            |
      | Evaluar servicio  | Calificación y comentario guardados  |

    Input:
      usuario: propietario que recibió el servicio de reparación
      proceso de detección: acceso a la solicitud y evaluación del servicio

    Output:
      mensaje: evaluación guardada exitosamente
      acción: calificación y comentarios visibles en la solicitud


US13 - Búsqueda de técnicos por calificaciones

Feature: Búsqueda de técnicos por calificación

  Scenario: Realizar una búsqueda de técnicos con altas calificaciones
    Given soy un usuario que necesita un servicio de reparación
    When busco técnicos y filtro por calificación
    Then el sistema muestra una lista de técnicos con las calificaciones más altas

    Example:
      | Acción          | Resultado                                   |
      | Buscar técnicos | Lista de técnicos con altas calificaciones  |

    Input:
      usuario: propietario que busca servicio de reparación
      proceso de detección: búsqueda de técnicos y filtrado por calificación

    Output:
      mensaje: lista de técnicos mostrada
      acción: técnicos ordenados por calificación visible


US14 - Comparación de técnicos por experiencia y especialización

Feature: Comparación de técnicos por experiencia

  Scenario: Comparar técnicos en base a años de experiencia
    Given tengo una lista de técnicos disponibles
    When ordeno la lista por años de experiencia
    Then el sistema muestra los técnicos ordenados de mayor a menor experiencia

    Example:
      | Acción         | Resultado                                        |
      | Ordenar por experiencia | Lista de técnicos ordenada por experiencia |

    Input:
      usuario: propietario que tiene lista de técnicos
      proceso de detección: ordenación de la lista por años de experiencia

    Output:
      mensaje: lista de técnicos ordenada
      acción: técnicos mostrados en orden de experiencia


US15 - Visualización de perfiles de técnicos

Feature: Visualización de perfiles de técnicos

  Scenario: Ver detalles de un perfil de técnico
    Given tengo una lista de técnicos disponibles
    When selecciono un técnico específico
    Then puedo ver su perfil con detalles de calificación, experiencia y especialidades

    Example:
      | Acción             | Resultado                                |
      | Ver perfil técnico | Detalles visibles en perfil del técnico  |

    Input:
      usuario: propietario con lista de técnicos
      proceso de detección: selección de un técnico específico

    Output:
      mensaje: perfil del técnico mostrado
      acción: detalles de calificación, experiencia y especialidades visibles


US16 - Contacto directo con técnicos seleccionados
Feature: Contacto directo con técnicos

  Scenario: Contactar a un técnico seleccionado
    Given tengo una lista de técnicos seleccionados
    When elijo un técnico para contactar
    Then puedo enviar un mensaje directamente al técnico para discutir detalles específicos

    Example:
      | Acción                  | Resultado                                    |
      | Contactar técnico       | Mensaje enviado al técnico seleccionado       |

    Input:
      usuario: propietario con una lista de técnicos seleccionados
      proceso de detección: elección de un técnico para contactar

    Output:
      mensaje: mensaje enviado al técnico seleccionado
      acción: comunicación directa iniciada con el técnico


US17 - Filtrado de técnicos por disponibilidad y ubicación
Feature: Filtrado de técnicos

  Scenario: Filtrar técnicos por disponibilidad y ubicación
    Given tengo una lista de técnicos disponibles
    When filtro la lista por disponibilidad y ubicación
    Then se muestran solo los técnicos que pueden atender mi solicitud

    Example:
      | Acción                      | Resultado                                    |
      | Filtrar por disponibilidad   | Lista de técnicos que pueden atender         |

    Input:
      usuario: propietario con una lista de técnicos disponibles
      proceso de detección: filtrado de la lista por disponibilidad y ubicación

    Output:
      mensaje: lista de técnicos que pueden atender
      acción: técnicos filtrados mostrados según disponibilidad


US18 - Evaluación de técnicos después del servicio

Feature: Evaluación de técnicos

  Scenario: Evaluar a un técnico después de recibir el servicio
    Given he recibido el servicio de un técnico
    When accedo a la opción para evaluar al técnico
    Then puedo calificar el servicio y dejar comentarios

    Example:
      | Acción                | Resultado                                    |
      | Evaluar técnico      | Calificación y comentario guardados          |

    Input:
      usuario: propietario que ha recibido servicio de un técnico
      proceso de detección: acceso a la opción para evaluar al técnico

    Output:
      mensaje: calificación y comentario guardados
      acción: evaluación del técnico registrada


US19 - Creación de lista de técnicos favoritos
Feature: Lista de técnicos favoritos

  Scenario: Crear una lista de técnicos favoritos
    Given tengo técnicos seleccionados
    When añado técnicos a mi lista de favoritos
    Then puedo acceder rápidamente a esta lista para futuras reparaciones

    Example:
      | Acción                      | Resultado                                    |
      | Añadir a favoritos           | Técnico añadido a la lista de favoritos      |

    Input:
      usuario: propietario con técnicos seleccionados
      proceso de detección: adición de técnicos a la lista de favoritos

    Output:
      mensaje: técnico añadido a la lista de favoritos
      acción: lista de técnicos favoritos actualizada


US20 - Visualización de términos y condiciones del servicio de cada técnico

Feature: Visualización de términos y condiciones

  Scenario: Ver términos y condiciones de un técnico
    Given tengo una lista de técnicos
    When selecciono un técnico específico
    Then puedo ver los términos y condiciones de su servicio

    Example:
      | Acción                       | Resultado                                    |
      | Ver términos y condiciones   | Términos y condiciones visibles para el técnico |

    Input:
      usuario: propietario con una lista de técnicos
      proceso de detección: selección de un técnico específico

    Output:
      mensaje: términos y condiciones visibles para el técnico
      acción: detalles de términos y condiciones mostrados

US21 - Solicitud de reparación a domicilio

Feature: Solicitar reparación a domicilio

  Scenario: Realizar una solicitud de reparación a domicilio
    Given soy un usuario que necesita una reparación
    When completo el formulario de solicitud para servicio a domicilio
    Then se crea una solicitud de reparación y se envía a los técnicos disponibles

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar reparación        | Solicitud enviada a técnicos disponibles     |

    Input:
      usuario: propietario que necesita una reparación
      proceso de detección: completando el formulario de solicitud

    Output:
      mensaje: solicitud enviada a técnicos disponibles
      acción: solicitud de reparación creada


US22 - Confirmación de horarios disponibles

Feature: Visualizar horarios disponibles

  Scenario: Ver horarios disponibles para reparación a domicilio
    Given tengo una solicitud de reparación a domicilio
    When consulto los horarios disponibles
    Then el sistema muestra una lista de horarios disponibles para el servicio

    Example:
      | Acción                      | Resultado                                    |
      | Ver horarios disponibles    | Lista de horarios disponibles mostrada       |

    Input:
      usuario: propietario con una solicitud de reparación
      proceso de detección: consulta de horarios disponibles

    Output:
      mensaje: lista de horarios disponibles mostrada
      acción: horarios accesibles mostrados al usuario


US23 - Visualización del recorrido del técnico

Feature: Visualizar recorrido en tiempo real

  Scenario: Ver el recorrido del técnico hacia mi domicilio
    Given tengo una solicitud de reparación programada
    When accedo a la opción de seguimiento del técnico
    Then puedo ver el recorrido del técnico en tiempo real en el mapa

    Example:
      | Acción                      | Resultado                                    |
      | Ver recorrido del técnico    | Recorrido del técnico visible en el mapa     |

    Input:
      usuario: propietario con una solicitud de reparación programada
      proceso de detección: acceso a la opción de seguimiento

    Output:
      mensaje: recorrido del técnico visible en el mapa
      acción: seguimiento en tiempo real del técnico


US24 - Reprogramación de reparaciones a domicilio

Feature: Solicitar reprogramación

  Scenario: Reprogramar una reparación a domicilio
    Given tengo una solicitud de reparación programada
    When solicito reprogramar la cita
    Then puedo elegir un nuevo horario disponible para el servicio

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar reprogramación    | Opción para seleccionar nuevo horario disponible |

    Input:
      usuario: propietario con una solicitud de reparación programada
      proceso de detección: solicitud de reprogramación

    Output:
      mensaje: opción para seleccionar nuevo horario disponible
      acción: reprogramación de la cita iniciada


US25 - Recepción de notificaciones de llegada del técnico

Feature: Notificaciones de llegada

  Scenario: Recibir notificación de llegada del técnico
    Given tengo una reparación programada
    When el técnico está a punto de llegar
    Then debo recibir una notificación alertando sobre su llegada

    Example:
      | Acción                      | Resultado                                    |
      | Notificación de llegada     | Notificación de llegada del técnico recibida  |

    Input:
      usuario: propietario con una reparación programada
      proceso de detección: técnico está a punto de llegar

    Output:
      mensaje: notificación de llegada del técnico recibida
      acción: usuario informado sobre la llegada del técnico


US26 - Cancelación de reparaciones a domicilio

Feature: Solicitar cancelación de reparación

  Scenario: Cancelar una solicitud de reparación a domicilio
    Given tengo una solicitud de reparación programada
    When decido cancelar la reparación
    Then el sistema me permite confirmar la cancelación de la solicitud

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar cancelación       | Solicitud cancelada y notificación enviada  |

    Input:
      usuario: propietario con una solicitud de reparación programada
      proceso de detección: solicitud de cancelación

    Output:
      mensaje: solicitud cancelada y notificación enviada
      acción: cancelación confirmada


US27 - Revisión del trabajo del técnico

Feature: Solicitar revisión del trabajo

  Scenario: Revisar el trabajo del técnico antes de finalizar la reparación
    Given tengo un técnico trabajando en mi domicilio
    When solicito revisar el estado de la reparación
    Then puedo ver el progreso del trabajo y discutirlo con el técnico

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar revisión          | Progreso de la reparación visible y discutible |

    Input:
      usuario: propietario con un técnico trabajando
      proceso de detección: solicitud de revisión del trabajo

    Output:
      mensaje: progreso de la reparación visible y discutible
      acción: usuario puede revisar el estado de la reparación


US28 - Registro de retroalimentación sobre reparaciones a domicilio

Feature: Registrar retroalimentación

  Scenario: Dejar retroalimentación sobre la reparación
    Given he recibido un servicio de reparación a domicilio
    When registro mi retroalimentación en la plataforma
    Then el sistema guarda mi retroalimentación para futuras evaluaciones

    Example:
      | Acción                      | Resultado                                    |
      | Registrar retroalimentación  | Retroalimentación guardada exitosamente      |

    Input:
      usuario: propietario que ha recibido un servicio de reparación
      proceso de detección: registro de retroalimentación

    Output:
      mensaje: retroalimentación guardada exitosamente
      acción: retroalimentación registrada para evaluación futura


US29 - Solicitud de asistencia técnica remota

Feature: Solicitar asistencia técnica remota

  Scenario: Pedir asistencia técnica remota
    Given estoy enfrentando un problema técnico
    When solicito asistencia remota a través de la plataforma
    Then el sistema envía mi solicitud a un técnico disponible

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar asistencia remota  | Solicitud de asistencia enviada              |
    Input:
      usuario: propietario enfrentando un problema técnico
      proceso de detección: solicitud de asistencia remota

    Output:
      mensaje: solicitud de asistencia enviada
      acción: asistencia técnica remota solicitada



US30 - Chat en vivo con técnicos para soporte inmediato

Feature: Iniciar chat en vivo

  Scenario: Acceder a chat en vivo con un técnico
    Given necesito soporte inmediato
    When inicio un chat en vivo con un técnico
    Then puedo comunicarme con el técnico en tiempo real

    Example:
      | Acción                      | Resultado                                    |
      | Iniciar chat               | Chat en vivo con técnico disponible          |

    Input:
      usuario: propietario que necesita soporte inmediato
      proceso de detección: inicio de un chat en vivo

    Output:
      mensaje: chat en vivo con técnico disponible
      acción: comunicación en tiempo real iniciada

US31 - Envío de archivos y capturas para soporte técnico

Feature: Adjuntar archivos en la solicitud de soporte

  Scenario: Enviar archivos y capturas de pantalla al técnico
    Given estoy en una sesión de soporte técnico
    When adjunto archivos o capturas de pantalla
    Then el técnico recibe mis archivos para entender mejor el problema

    Example:
      | Acción                      | Resultado                                    |
      | Adjuntar archivos           | Archivos enviados correctamente al técnico    |

    Input:
      usuario: propietario que adjunta archivos
      archivos: [archivo.png, captura.jpg]

    Output:
      mensaje: archivos enviados correctamente al técnico
      acción: archivos disponibles para el técnico

US32 - Programación de sesiones de soporte en línea

Feature: Solicitar programación de soporte

  Scenario: Programar una sesión de soporte técnico en línea
    Given quiero recibir asistencia técnica
    When solicito programar una sesión en la plataforma
    Then se debe registrar mi solicitud con la fecha y hora elegidas

    Example:
      | Acción                      | Resultado                                    |
      | Programar soporte           | Sesión de soporte programada exitosamente     |

    Input:
      usuario: propietario que solicita soporte
      fecha: "2024-11-01"
      hora: "10:00 AM"

    Output:
      mensaje: sesión de soporte programada exitosamente
      acción: solicitud registrada con fecha y hora

US33 - Registro de consultas previas y soluciones recibidas

Feature: Guardar historial de consultas

  Scenario: Registrar mis consultas previas y soluciones
    Given he recibido soporte técnico anteriormente
    When se registran mis consultas y soluciones en la plataforma
    Then puedo acceder a mi historial de consultas en cualquier momento

    Example:
      | Acción                      | Resultado                                    |
      | Guardar historial           | Historial de consultas registrado             |

    Input:
      usuario: propietario que ha recibido soporte
      consultas: ["Consulta 1", "Consulta 2"]

    Output:
      mensaje: historial de consultas registrado
      acción: acceso al historial disponible

US34 - Registro de garantías de dispositivos

Feature: Registrar garantía de dispositivo

  Scenario: Agregar un nuevo dispositivo y su garantía
    Given tengo un dispositivo nuevo
    When registro su garantía en la plataforma
    Then se debe guardar la información de la garantía correctamente

    Example:
      | Acción                      | Resultado                                    |
      | Registrar garantía          | Garantía registrada exitosamente              |

    Input:
      usuario: propietario que registra el dispositivo
      dispositivo: "Laptop XYZ"
      fecha_de_compra: "2024-01-15"

    Output:
      mensaje: garantía registrada exitosamente
      acción: información de la garantía guardada

US35 - Solicitud de revisiones bajo garantía

Feature: Solicitar revisión de dispositivo en garantía

  Scenario: Pedir una revisión bajo garantía
    Given tengo un dispositivo que aún está bajo garantía
    When solicito una revisión a través de la plataforma
    Then el sistema registra mi solicitud para la revisión

    Example:
      | Acción                      | Resultado                                    |
      | Solicitar revisión          | Revisión solicitada y registrada              |

    Input:
      usuario: propietario que solicita revisión
      dispositivo: "Laptop XYZ"

    Output:
      mensaje: revisión solicitada y registrada
      acción: solicitud de revisión en curso

US36 - Recepción de notificaciones de vencimiento de garantías

Feature: Recepción de notificaciones de vencimiento de garantías

  Scenario: Recibir una notificación cuando la garantía está por vencer
    Given tengo un dispositivo con garantía próxima a vencer
    When el periodo de garantía está a punto de finalizar
    Then recibo una notificación sobre el vencimiento para tomar acción

  Example:
    | Acción                       | Resultado                                   |
    | Recibir notificación         | Notificación de vencimiento recibida        |

  Input:
    dispositivo: con garantía próxima a vencer
    periodo de garantía: a punto de finalizar

  Output:
    mensaje: notificación sobre el vencimiento
    acción: tomar acción sobre la garantía

US37 - Registro de reclamos sobre reparaciones

Feature: Registro de reclamos sobre reparaciones

  Scenario: Registrar un reclamo después de una reparación
    Given se realizó una reparación en un dispositivo
    When encuentro un problema relacionado con la reparación
    Then puedo registrar un reclamo en la plataforma para seguimiento

  Example:
    | Acción            | Resultado                              |
    | Registrar reclamo | Reclamo registrado en la plataforma    |

  Input:
    dispositivo: reparado
    problema: relacionado con la reparación

  Output:
    mensaje: reclamo registrado
    acción: seguimiento del reclamo

US38 - Confirmación de trabajos cubiertos por garantía

Feature: Confirmación de trabajos cubiertos por garantía

  Scenario: Confirmar si una reparación está cubierta por la garantía
    Given tengo un dispositivo con garantía activa
    When solicito información sobre la cobertura para una reparación
    Then el sistema me confirma si la reparación está cubierta o no

  Example:
    | Acción                    | Resultado                                  |
    | Confirmar cobertura       | Confirmación de cobertura recibida         |

  Input:
    dispositivo: con garantía activa
    solicitud: información sobre la cobertura

  Output:
    mensaje: confirmación de cobertura
    acción: evaluación de cobertura

US39 - Visualización de términos y condiciones de garantías

Feature: Visualización de términos y condiciones de garantías

  Scenario: Ver los términos y condiciones de la garantía
    Given tengo un dispositivo con garantía registrada en la plataforma
    When accedo a los detalles de la garantía
    Then puedo ver los términos y condiciones de cobertura

  Example:
    | Acción                      | Resultado                                |
    | Ver términos de garantía    | Términos y condiciones visibles          |

  Input:
    dispositivo: con garantía registrada

  Output:
    mensaje: términos y condiciones visibles
    acción: revisión de términos

US40 - Envío de encuestas de satisfacción post-servicio

Feature: Envío de encuestas de satisfacción post-servicio

  Scenario: Recibir una encuesta de satisfacción después de un servicio
    Given se ha completado un servicio de reparación en mi dispositivo
    When el servicio es finalizado
    Then recibo una encuesta de satisfacción para evaluar el trabajo realizado

  Example:
    | Acción                  | Resultado                                 |
    | Recibir encuesta        | Encuesta de satisfacción recibida         |

  Input:
    servicio: reparación completada

  Output:
    mensaje: encuesta de satisfacción recibida
    acción: evaluación del servicio

US41 - Recepción de reportes de evaluación de técnicos

Feature: Recepción de reportes de evaluación de técnicos

  Scenario: Recibir un reporte de evaluación del desempeño de los técnicos asignados
    Given tengo una reparación realizada por un técnico
    When el sistema genera un reporte de evaluación sobre el técnico
    Then recibo una notificación con el reporte de evaluación

  Example:
    | Acción                 | Resultado                                       |
    | Recibir reporte        | Reporte de evaluación recibido en la plataforma |

  Input:
    reparación: realizada por un técnico
    sistema: genera un reporte de evaluación

  Output:
    mensaje: notificación con el reporte
    acción: revisión del reporte

US42 - Revisión de estadísticas de satisfacción

Feature: Revisión de estadísticas de satisfacción

  Scenario: Consultar estadísticas de satisfacción de técnicos y servicios
    Given tengo acceso a la plataforma de evaluación de servicios
    When reviso la sección de estadísticas de satisfacción
    Then puedo ver las estadísticas generales de satisfacción de los técnicos

  Example:
    | Acción                   | Resultado                                 |
    | Consultar estadísticas   | Estadísticas de satisfacción visibles     |

  Input:
    acceso: plataforma de evaluación
    sección: estadísticas de satisfacción

  Output:
    mensaje: estadísticas generales visibles
    acción: revisión de estadísticas

US43 - Comparación de servicios basados en evaluaciones recibidas

Feature: Comparación de servicios basados en evaluaciones recibidas

  Scenario: Comparar servicios por calificación de evaluaciones
    Given tengo una lista de servicios evaluados
    When selecciono la opción de comparar servicios
    Then puedo ver una comparación basada en las calificaciones recibidas

  Example:
    | Acción              | Resultado                                          |
    | Comparar servicios  | Comparación de servicios por calificaciones visible|

  Input:
    lista: servicios evaluados
    opción: comparar servicios

  Output:
    mensaje: comparación de servicios
    acción: análisis de calificaciones

US44 - Propuesta de sugerencias para mejorar los servicios

Feature: Propuesta de sugerencias para mejorar los servicios

  Scenario: Enviar una sugerencia de mejora para un servicio
    Given he utilizado un servicio recientemente
    When tengo una sugerencia de mejora
    Then puedo enviarla a través de la plataforma

  Example:
    | Acción              | Resultado                            |
    | Enviar sugerencia   | Sugerencia enviada exitosamente      |

  Input:
    servicio: utilizado recientemente
    sugerencia: propuesta de mejora

  Output:
    mensaje: sugerencia enviada
    acción: seguimiento de la sugerencia

US45 - Planificación de reparaciones fuera de horario laboral

Feature: Planificación de reparaciones fuera de horario laboral

  Scenario: Programar una reparación en horario no laboral
    Given necesito una reparación en horario fuera del laboral
    When selecciono una fecha y hora específicas
    Then el sistema agenda la reparación en el horario solicitado

  Example:
    | Acción              | Resultado                                |
    | Programar reparación | Reparación programada en horario solicitado |

  Input:
    necesidad: reparación fuera del horario laboral
    fecha: seleccionada
    hora: seleccionada

  Output:
    mensaje: reparación agendada
    acción: confirmación de la programación

US46 - Programación de reparaciones recurrentes

Feature: Programación de reparaciones recurrentes

  Scenario: Configurar frecuencia para reparaciones recurrentes
    Given quiero programar reparaciones recurrentes para un dispositivo
    When selecciono una frecuencia (diaria, semanal, mensual)
    Then el sistema programa las reparaciones según la frecuencia seleccionada

  Example:
    | Acción                  | Resultado                                               |
    | Seleccionar frecuencia  | Reparación recurrente programada con éxito              |

  Input:
    dispositivo: a programar
    frecuencia: seleccionada

  Output:
    mensaje: programación de reparaciones recurrentes
    acción: confirmación de la frecuencia

US47 - Confirmación de disponibilidad de técnicos

Feature: Confirmación de disponibilidad de técnicos

  Scenario: Ver disponibilidad de un técnico para una fecha programada
    Given quiero programar una reparación en una fecha específica
    When selecciono un técnico
    Then puedo ver si el técnico está disponible para la fecha programada

  Example:
    | Acción              | Resultado                                   |
    | Consultar disponibilidad | Disponibilidad del técnico visible     |

  Input:
    fecha: específica
    técnico: seleccionado

  Output:
    mensaje: disponibilidad del técnico
    acción: programación de la reparación

US48 - Recepción de recordatorios de reparaciones programadas

Feature: Recepción de recordatorios de reparaciones programadas

  Scenario: Recibir recordatorio de una reparación programada
    Given tengo una reparación programada próximamente
    When se acerca la fecha de la reparación
    Then recibo un recordatorio por la plataforma

  Example:
    | Acción                   | Resultado                                          |
    | Recibir recordatorio     | Recordatorio de reparación recibido correctamente  |

  Input:
    reparación: programada
    fecha: próxima

  Output:
    mensaje: recordatorio recibido
    acción: preparación para la reparación

US49 - Modificación de fechas y horarios de reparaciones programadas

Feature: Modificación de fechas de reparaciones programadas

  Scenario: Modificar la fecha de una reparación programada
    Given tengo una reparación programada en el futuro
    When cambio la fecha de la reparación
    Then la nueva fecha se guarda y la anterior se cancela

  Example:
    | Acción                | Resultado                                           |
    | Modificar fecha       | Fecha de reparación actualizada con éxito           |

  Input:
    reparación: programada en el futuro
    nueva fecha: seleccionada

  Output:
    mensaje: nueva fecha guardada
    acción: cancelación de la fecha anterior

US50 - Minimización de tiempos de carga de la aplicación

Feature: Minimización de tiempos de carga

  Scenario: Cargar la página de inicio en menos de 3 segundos
    Given ingreso a la aplicación
    When se carga la página de inicio
    Then el tiempo de carga es inferior a 3 segundos

  Example:
    | Acción                | Resultado                                   |
    | Cargar página de inicio | Página cargada en menos de 3 segundos       |

  Input:
    acceso: aplicación
    tiempo de carga: inferior a 3 segundos

  Output:
    mensaje: página cargada
    acción: evaluación del tiempo de carga

US51 - Integración con dispositivos móviles

Feature: Integración con dispositivos móviles

  Scenario: Adaptar la interfaz a la pantalla de un dispositivo móvil
    Given ingreso a la aplicación desde un dispositivo móvil
    When se carga la aplicación
    Then la interfaz se adapta correctamente al tamaño de la pantalla del dispositivo

  Example:
    | Acción                          | Resultado                                 |
    | Abrir aplicación en móvil       | Interfaz adaptada a pantalla de móvil     |

  Input:
    acceso: aplicación desde dispositivo móvil
    tamaño de pantalla: variable

  Output:
    mensaje: interfaz adaptada
    acción: verificación de adaptación


US52 - Acceso multiplataforma

Feature: Acceso multiplataforma

  Scenario: Mantener datos sincronizados en varios dispositivos
    Given tengo acceso a la aplicación desde diferentes dispositivos
    When realizo un cambio en uno de los dispositivos
    Then los datos se sincronizan automáticamente en todos los dispositivos

  Example:
    | Acción                          | Resultado                                 |
    | Realizar cambio en un dispositivo | Sincronización automática en otros dispositivos |

  Input:
    acceso: aplicación en múltiples dispositivos
    cambio realizado: datos modificados

  Output:
    mensaje: datos sincronizados
    acción: verificación de sincronización


US53 - Interfaz amigable y simplificada

Feature: Interfaz amigable y simplificada

  Scenario: Navegar fácilmente por la aplicación
    Given estoy en la aplicación
    When intento encontrar una función básica (ej. configuración)
    Then la función es fácil de localizar y acceder

  Example:
    | Acción                           | Resultado                           |
    | Buscar función en la interfaz    | Función encontrada rápidamente      |

  Input:
    acceso: aplicación
    función buscada: configuración

  Output:
    mensaje: función encontrada
    acción: navegación efectiva


US54 - Diseño visual atractivo y funcional

Feature: Diseño visual atractivo y funcional

  Scenario: Visualización de la paleta de colores en la interfaz
    Given estoy usando la aplicación
    When accedo a la interfaz
    Then la paleta de colores es atractiva y profesional

  Example:
    | Acción                           | Resultado                           |
    | Acceder a interfaz               | Paleta de colores profesional       |

  Input:
    acceso: aplicación
    diseño visual: paleta de colores

  Output:
    mensaje: diseño atractivo
    acción: evaluación de la paleta


US55 - Disponibilidad en varios idiomas

Feature: Disponibilidad en varios idiomas

  Scenario: Seleccionar idioma preferido desde la configuración
    Given estoy en la configuración de la aplicación
    When selecciono un idioma disponible
    Then la interfaz de la aplicación cambia al idioma seleccionado

  Example:
    | Acción                           | Resultado                                     |
    | Seleccionar idioma               | Aplicación cambia al idioma elegido           |

  Input:
    acceso: configuración
    idioma seleccionado: variable

  Output:
    mensaje: idioma cambiado
    acción: verificación de idioma


US56 - Acceso directo a soporte técnico

Feature: Acceso directo a soporte técnico

  Scenario: Acceder al soporte técnico desde la pantalla principal
    Given estoy en la pantalla principal de la aplicación
    When selecciono el botón de soporte técnico
    Then soy redirigido al área de soporte para obtener ayuda

  Example:
    | Acción                           | Resultado                                     |
    | Seleccionar botón de soporte     | Redirigido al área de soporte                 |

  Input:
    acceso: pantalla principal
    acción: selección del botón de soporte

  Output:
    mensaje: redirección a soporte
    acción: acceso a soporte técnico


US57 - Disponibilidad constante del soporte técnico

Feature: Disponibilidad constante del soporte técnico

  Scenario: Acceder al soporte en cualquier momento del día
    Given es cualquier hora del día
    When intento acceder al soporte técnico en la aplicación
    Then el soporte técnico está disponible para resolver mi consulta

  Example:
    | Acción                           | Resultado                                     |
    | Acceder a soporte a medianoche   | Soporte disponible                            |

  Input:
    acceso: aplicación
    tiempo: cualquier hora

  Output:
    mensaje: soporte disponible
    acción: consulta de soporte


US58 - Recuperación de contraseñas olvidadas

Feature: Recuperación de contraseñas olvidadas

  Scenario: Recibir enlace para recuperar contraseña
    Given he olvidado mi contraseña
    When solicito recuperar mi contraseña
    Then recibo un enlace en mi correo para restablecerla

  Example:
    | Acción                           | Resultado                                     |
    | Solicitar recuperación de contraseña | Enlace de recuperación enviado al correo  |

  Input:
    acceso: correo electrónico
    solicitud: recuperación de contraseña

  Output:
    mensaje: enlace enviado
    acción: verificación de enlace


US59 - Cambio de contraseña seguro

Feature: Cambio de contraseña seguro

  Scenario: Verificación de contraseña actual antes de permitir el cambio
    Given quiero cambiar mi contraseña
    When ingreso mi contraseña actual y la nueva contraseña
    Then el sistema permite el cambio solo si la contraseña actual es correcta

  Example:
    | Acción                           | Resultado                                     |
    | Ingresar contraseña actual       | Cambio permitido si la contraseña es correcta |

  Input:
    contraseña actual: variable
    nueva contraseña: variable

  Output:
    mensaje: cambio exitoso
    acción: verificación de contraseña


US60 - Contacto con soporte técnico a través de múltiples canales

Feature: Múltiples canales de contacto con soporte

  Scenario: Contacto con soporte técnico a través de chat en la aplicación
    Given necesito contactar soporte técnico
    When selecciono la opción de chat
    Then puedo comunicarme en tiempo real con un representante

  Example:
    | Acción                           | Resultado                                     |
    | Iniciar chat con soporte         | Comunicación establecida en tiempo real       |

  Input:
    acceso: aplicación
    acción: selección del chat

  Output:
    mensaje: chat iniciado
    acción: comunicación en tiempo real


US61 - Recepción de notificaciones sobre el estado de las solicitudes de soporte técnico

Feature: Recepción de notificaciones sobre el estado de las solicitudes de soporte técnico

  Scenario: Recibir notificación de cambio de estado en solicitud de soporte
    Given tengo una solicitud de soporte en proceso
    When el estado de mi solicitud cambia (ej. en revisión, resuelta)
    Then recibo una notificación con la actualización del estado

  Example:
    | Acción                           | Resultado                                     |
    | Cambio de estado a "En revisión" | Notificación recibida sobre cambio de estado  |

  Input:
    solicitud de soporte: en proceso
    cambio de estado: variable

  Output:
    mensaje: notificación de estado
    acción: verificación de cambio de estado


US62 - Acceso directo a soporte técnico dentro de la aplicación

Feature: Acceso directo a soporte técnico

  Scenario: Acceder al soporte técnico desde el menú principal
    Given estoy en el menú principal de la aplicación
    When selecciono el botón de soporte técnico
    Then soy redirigido a una pantalla de contacto con opciones de soporte

  Example:
    | Acción                           | Resultado                                     |
    | Seleccionar botón de soporte     | Redirigido a pantalla de contacto con soporte |

  Input:
    acceso: menú principal
    acción: selección del botón de soporte

  Output:
    mensaje: redirección a soporte
    acción: acceso a opciones de contacto


US63 - Disponibilidad constante del servicio de asistencia técnica

Feature: Disponibilidad constante del soporte técnico

  Scenario: Acceso al soporte técnico en cualquier momento
    Given intento acceder al soporte en cualquier hora del día
    When necesito resolver una consulta o problema
    Then el soporte técnico está disponible para atenderme

  Example:
    | Acción                           | Resultado                                      |
    | Acceder a soporte a medianoche   | Soporte disponible y listo para asistir         |

  Input:
    acceso: aplicación
    tiempo: cualquier hora

  Output:
    mensaje: soporte disponible
    acción: acceso a asistencia técnica


US64 - Proceso seguro y sencillo para recuperar contraseñas olvidadas

Feature: Recuperación de contraseñas olvidadas

  Scenario: Solicitar enlace de recuperación de contraseña
    Given he olvidado mi contraseña
    When selecciono la opción de "Olvidé mi contraseña"
    Then recibo un enlace de recuperación en mi correo electrónico

  Example:
    | Acción                                  | Resultado                                      |
    | Seleccionar "Olvidé mi contraseña"      | Enlace de recuperación enviado al correo        |

  Input:
    acción: selección de opción de recuperación
    acceso: correo electrónico

  Output:
    mensaje: enlace enviado
    acción: verificación de recuperación


US65 - Funcionalidad para cambiar la contraseña de forma rápida y segura

Feature: Cambio de contraseña seguro

  Scenario: Ingresar la contraseña actual antes de cambiarla
    Given quiero cambiar mi contraseña
    When ingreso mi contraseña actual y la nueva
    Then el cambio es procesado si la contraseña actual es correcta

  Example:
    | Acción                                  | Resultado                                      |
    | Ingresar contraseña actual              | Cambio autorizado si contraseña es correcta    |

  Input:
    contraseña actual: variable
    nueva contraseña: variable

  Output:
    mensaje: cambio exitoso
    acción: verificación de contraseña


US66 - Protección de los datos personales con protocolos de seguridad avanzados

Feature: Protección de datos personales con protocolos avanzados

  Scenario: Cifrado de datos personales
    Given tengo información personal almacenada en la aplicación
    When accedo a mis datos personales
    Then la información debe estar cifrada para evitar accesos no autorizados

  Example:
    | Acción                                | Resultado                                        |
    | Acceder a datos personales            | Datos cifrados para proteger privacidad          |

  Input:
    acceso: datos personales
    protocolo de seguridad: cifrado

  Output:
    mensaje: datos protegidos
    acción: verificación de cifrado


US67 - Acceso claro a las políticas de privacidad y seguridad

Feature: Acceso claro a políticas de privacidad y seguridad

  Scenario: Consultar políticas desde el menú de configuración
    Given estoy en el menú de configuración de la aplicación
    When selecciono la opción de políticas de privacidad
    Then puedo visualizar las políticas actuales de privacidad y seguridad

  Example:
    | Acción                                | Resultado                                        |
    | Seleccionar políticas de privacidad   | Políticas actuales visibles                      |

  Input:
    acceso: menú de configuración
    acción: selección de políticas

  Output:
    mensaje: políticas visibles
    acción: consulta de políticas


US68 - Notificaciones sobre cambios en las políticas de privacidad

Feature: Notificación de cambios en políticas de privacidad

  Scenario: Recibir notificación de actualización de políticas
    Given las políticas de privacidad han sido actualizadas
    When hay cambios importantes en las políticas
    Then recibo una notificación informándome sobre los cambios y un enlace para consultarlos

  Example:
    | Acción                                | Resultado                                        |
    | Cambio en políticas de privacidad     | Notificación recibida con enlace a políticas     |

  Input:
    cambio en políticas: variable
    notificación: enviada

  Output:
    mensaje: notificación enviada
    acción: acceso a políticas actualizadas


US69 - Alertas de actividad inusual en la cuenta

Feature: Alertas de actividad sospechosa

  Scenario: Recibir alerta por actividad inusual
    Given ocurre un inicio de sesión desde una ubicación o dispositivo no reconocido
    When el sistema detecta actividad sospechosa
    Then recibo una alerta y opciones para verificar o bloquear el acceso

  Example:
    | Acción                                | Resultado                                        |
    | Inicio de sesión sospechoso           | Alerta recibida y opciones para verificar        |

  Input:
    actividad: inicio de sesión
    ubicación: no reconocida

  Output:
    mensaje: alerta de actividad
    acción: opciones de verificación


US70 - Personalización de las preferencias de notificación

Feature: Personalización de notificaciones

  Scenario: Personalizar tipo de notificaciones a recibir
    Given tengo acceso a la configuración de notificaciones
    When selecciono mis preferencias de notificación
    Then puedo elegir qué tipos de alertas quiero recibir (e.g., actividad, cambios de políticas)

  Example:
    | Acción                                | Resultado                                        |
    | Seleccionar preferencias de notificación | Notificaciones configuradas según preferencias  |

  Input:
    acceso: configuración de notificaciones
    preferencias: seleccionadas

  Output:
    mensaje: notificaciones personalizadas
    acción: verificación de configuración