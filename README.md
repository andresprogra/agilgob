# Agilgob
Control de una librería. 
## Ejecución
Una vez obtenido el código fuente, es necesario instalar las dependencias necesarias para la ejecución del proyecto.
Para esto nos debemos posicionar en la carpeta del proyecto en nuestra terminal y ejecutar el siguiente comando.
```
bundle install
```
Una vez realizada esta acción es necesario configurar las credenciales de nuestra base de datos, siendo el caso que usted requiera colocar un usuario, contraseña, host, etc; lo puede realizar a través del archivo __database.yml__ ubicado en la carpeta _config_ en la raíz del proyecto. 
Deberemos correr las migraciones necesarias de nuestro proyecto, para eso debemos ejecutar el siguiente comando en nuestra terminal:
```
rails db:migrate
```
Para iniciar nuestro servidor es necesario ejecutar el siguiente comando:

```
rails server
```

## Endpoints
|Method | PATH | Description |
|--|--|--|
| GET | /authors | Enlista todos los autores disponibles en la plataforma |
| GET | /authors/:id | Muestra la información del autor obtenido |
| POST | /authors | Crea un nuevo author |
| PUT | /authors/:id | Actualiza el author |
| DELETE | /authors/:id |Elimina el author|
| GET | /authors:id/books | Enlista los libros del autor |
| GET | /shelves | Enlista todos los pasillo disponibles en la plataforma |
| GET | /shelves/:id | Muestra la información del pasillo obtenido |
| POST | /shelves | Crea un nuevo pasillo |
| PUT | /shelves/:id | Actualiza el pasillo |
| DELETE | /shelves/:id |Elimina el pasillo|
| GET | /shelves:id/books | Enlista los libros disponibles en el pasillo |
| GET | /books | Enlista todos los libros disponibles en la plataforma |
| GET | /books/:id | Muestra la información del libro obtenido |
| POST | /books | Crea un nuevo libro|
| PUT | /books/:id | Actualiza los datos del libro |
| DELETE | /books/:id |Elimina el libro|

## Pruebas
Para ejecutar nuestra suite de pruebas debemos ejecutar el siguiente comando en nuestra termina:
```
rspec
```
