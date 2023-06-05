# :telescope: Celestial_bodies
## :scroll: Proyecto 1 - Relational Database
-------------------------------------------

En este proyecto se trabajo con una base de datos llamada `universe` el cual se incluyeron 5 tablas:

- :milky_way: `galaxy`: tabla principal de la base de datos, consta de 5 columnas ( `galaxy_id`-`PK`, `name`, `class`, `distance_in_lightyear` (Distancia respecto a la via lactea), `active` (Si registra actividad interestelar) )

- :earth_americas: `planet`: Consta de 5 columnas, ( `planet_id`, `name`, `description`, `diameter_in_km`, `galaxy_id`-`FK`, `has life` )

- :star2: `star`: consta de 5 columnas (`star_id`, `name`, `age_in_millions_of_years`, `galaxy_id`-`FK`, `description`)

- :full_moon: `moon`: consta de 5 columnas (`moon_id`, `name`, `description`, `planet_id`-`FK`, `galaxy_id`-`FK`)

- :new_moon: `asteroids`: consta de 5 columnas (`asteroids_id`, `name`, `description`)

Para efectos de este proyecto cada tabla_id es la PRIMARY KEY de la tabla.


## :scroll: Diagrama Entidad - Relacion 

Armar el diagrama E-R fue el primer paso para poder completar este proyecto, se uso la siguiente logica a continuacion que podran comprobar en el diagrama:

- Una galaxia consta de multiples cuerpos celestes entre ellos encontramos: planetas, lunas, estrellas y asteroides. Por ende esta tabla tiene una relacion de uno a muchos con las demas
- Un planeta puede constar de multiples estrellas y lunas a su alrededor, como es el caso de Jupiter que consta de 79 Lunas pero para efectos de este proyecto no se relaciono a estrellas, si no solamente a lunas





![DIAGRAMA E-R](https://github.com/DevOld112/Celestial_bodies/assets/32624313/0ff26bd6-d418-448c-9839-e5c70132cad5)





