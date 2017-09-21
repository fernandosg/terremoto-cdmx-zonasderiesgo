![bandera-en-pie](https://user-images.githubusercontent.com/385670/30645087-3ddb7eb6-9dda-11e7-8ecd-17424b852299.jpg)

# TerremotoMX Zonas de riesgo

En septiembre 2017 sismos afectaron a diferentes partes de México.

* [Septiembre 7, 2017](https://es.wikipedia.org/wiki/Terremoto_del_sureste_de_M%C3%A9xico_de_2017) con epicentro en Chiapas.
* [Septiembre 19, 2017](https://es.wikipedia.org/wiki/Terremoto_de_Puebla_de_2017) con epicentro en Puebla.

Hasta ahora los estados con más afectaciones reportadas han sido Oaxaca,
Chiapas, Ciudad de México, Tlaxcala, Puebla, Guerrero, Morelos y Michoacán.

## Sobre este repositorio

Este repositorio es una propuesta de backend para almacenar y ofrecer, a través de una API, las zonas de riesgo registradas hasta el momento en los estados afectados.

## Requerimientos para arrancar este proyecto.

* Ruby 2.2 o mayor.
* Rails 5.1.4
* Postgresql

Las dependencias pueden ser instaladas ejecutando "bundle install" en la terminal, estando ubicado en la carpeta del proyecto

## Correr el proyecto

Una vez instalado las dependencias, solo es necesario ejecutar el comando: rails s

### Documentación de la API

## reporte_danos / GET (reporte_danos)

* url: /reporte_danos/
* método GET
* código de respuesta exitosa: 200
* contenido:
```
[
    {
        "calle": <string>,
        "numero_exterior": <integer>,
        "codigo_postal": <integer>,
        "entre_calles": <string>,
        "personas_heridas_fallecidas": <integer>,
        "personas_afectadas": <integer>,
        "apoyo_necesario": <string>,
        "informacion_extra": <string>,
        "informacion_contacto": <string>,
        "tipo_dano": {
            "id": <string>,
            "nombre": <string>
        },
        "entidad": {
            "id": <string>,
            "nombre": <string>
        },
        "delegacion": {
            "id": <string>,
            "nombre": <string>
        }
    }
]
```

## reporte_danos / POST (reporte_danos)

* url: /reporte_danos/
* método POST
* código de respuesta exitosa: 200
* parámetro:
```
{
    "calle": <string>,
    "numero_exterior": <integer>,
    "codigo_postal": <integer>,
    "entre_calles": <string>,
    "personas_heridas_fallecidas": <integer>,
    "personas_afectadas": <integer>,
    "apoyo_necesario": <string>,
    "informacion_extra": <string>,
    "informacion_contacto": <string>,
    "tipo_dano": {
        "id": <string>,
        "nombre": <string>
    },
    "entidad": {
        "id": <string>,
        "nombre": <string>
    },
    "delegacion": {
        "id": <string>,
        "nombre": <string>
    }
}
```
* contenido:
```
{
    "calle": <string>,
    "numero_exterior": <integer>,
    "codigo_postal": <integer>,
    "entre_calles": <string>,
    "personas_heridas_fallecidas": <integer>,
    "personas_afectadas": <integer>,
    "apoyo_necesario": <string>,
    "informacion_extra": <string>,
    "informacion_contacto": <string>,
    "tipo_dano": {
        "id": <string>,
        "nombre": <string>
    },
    "entidad": {
        "id": <string>,
        "nombre": <string>
    },
    "delegacion": {
        "id": <string>,
        "nombre": <string>
    }
}
```

## reporte_danos / delegacion / :delegacion_id GET (Colleción de reporte de daños por delegacion)

* url: /reporte_danos/delegacion/:delegacion_id
* método GET
* código de respuesta exitosa: 200
* contenido:
```
[
    {
        "calle": <string>,
        "numero_exterior": <integer>,
        "codigo_postal": <integer>,
        "entre_calles": <string>,
        "personas_heridas_fallecidas": <integer>,
        "personas_afectadas": <integer>,
        "apoyo_necesario": <string>,
        "informacion_extra": <string>,
        "informacion_contacto": <string>,
        "tipo_dano": {
            "id": <string>,
            "nombre": <string>
        },
        "entidad": {
            "id": <string>,
            "nombre": <string>
        },
        "delegacion": {
            "id": <string>,
            "nombre": <string>
        }
    }
]
```
## reporte_danos / dano / :tipo_dano_id GET (Colleción de reporte de daños por tipo de daño)

* url: /reporte_danos/dano/:tipo_dano_id
* método GET
* código de respuesta exitosa: 200
* contenido:
```
[
    {
        "calle": <string>,
        "numero_exterior": <integer>,
        "codigo_postal": <integer>,
        "entre_calles": <string>,
        "personas_heridas_fallecidas": <integer>,
        "personas_afectadas": <integer>,
        "apoyo_necesario": <string>,
        "informacion_extra": <string>,
        "informacion_contacto": <string>,
        "tipo_dano": {
            "id": <string>,
            "nombre": <string>
        },
        "entidad": {
            "id": <string>,
            "nombre": <string>
        },
        "delegacion": {
            "id": <string>,
            "nombre": <string>
        }
    }
]
```

## Licencia

MIT

> Se concede permiso, de forma gratuita, a cualquier persona que obtenga una
> copia de este software y de los archivos de documentación asociados (el
> "Software"), para utilizar el Software sin restricción, incluyendo sin
> limitación los derechos a usar, copiar, modificar, fusionar, publicar,
> distribuir, sublicenciar, y/o vender copias del Software, y a permitir a las
> personas a las que se les proporcione el Software a hacer lo mismo, sujeto a
> las siguientes condiciones:
>
> El aviso de copyright anterior y este aviso de permiso se incluirán en todas
> las copias o partes sustanciales del Software.
>
> EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O
> IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A GARANTÍAS DE COMERCIALIZACIÓN,
> IDONEIDAD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS
> AUTORES O TITULARES DEL COPYRIGHT SERÁN RESPONSABLES DE NINGUNA RECLAMACIÓN,
> DAÑOS U OTRAS RESPONSABILIDADES, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O
> CUALQUIER OTRO MOTIVO, QUE SURJA DE O EN CONEXIÓN CON EL SOFTWARE O EL USO U
> OTRO TIPO DE ACCIONES EN EL SOFTWARE.
