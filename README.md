# 🍽️ Restaurants

## Descripción

**Restaurants** es una aplicación simple que permite a los usuarios explorar perfiles de diferentes restaurantes, cada uno con su propio menú detallado. Los usuarios pueden ver información sobre los platos, como ingredientes y si son libres de gluten, además de poder ubicar el restaurante utilizando Mapas para obtener direcciones GPS.

En esta app de muestra, los datos se obtienen desde un archivo JSON.

## 🛠️ Tecnologías Utilizadas

- **SwiftUI**: Utilizado para construir una interfaz de usuario moderna y declarativa.
- **MVVM**: Arquitectura adoptada para separar la lógica de negocio de la interfaz de usuario, facilitando el mantenimiento y la escalabilidad.
- **JSON**: Formato utilizado para almacenar y transportar los datos de los restaurantes y sus menús.

## 🚀 Funcionalidades

- **Visualización de Restaurantes**: Navega por una lista de restaurantes con vistas previas de sus perfiles.
- **Perfil del Restaurante**: Accede a una página de detalles que incluye información sobre el restaurante y su menú.
- **Navegación GPS**: Un botón "Take me there" que, al ser presionado, abre Mapas para mostrar direcciones hacia el restaurante.
- **Detalle del Menú**: Al seleccionar un plato del menú, los usuarios pueden ver detalles como los ingredientes y la información sobre el gluten.


## 📂 Estructura del Proyecto
- **App**
  - `RestaurantsApp.swift`: Punto de entrada de la aplicación.
- **Core**
  - **Components**
    - `GlutenView.swift`: Componente que indica si un plato contiene gluten.
    - `IngredientsListView.swift`: Vista que lista los ingredientes de un plato.
    - `RestaurantCardView.swift`: Componente para mostrar una tarjeta de restaurante en la lista.
  - **Detail**
    - `DetailView.swift`: Pantalla que muestra el detalle de un item del menú de un restaurante.
  - **Restaurants**
    - `RestaurantsView.swift`: Pantalla que muestra la lista de restaurantes.
  - **RestaurantsProfile**
    - `RestaurantsProfileView.swift`: Pantalla que muestra el perfil de un restaurante.
- **Models**
  - `MenuItem.swift`: Modelo que representa un ítem del menú del restaurante.
  - `Restaurant.swift`: Modelo que representa un restaurante.
- **Services**
  - `DataService.swift`: Servicio para manejar la carga de datos desde un archivo JSON local.
- **Data**
  - `RestaurantData.json`: Archivo JSON que contiene los datos de los restaurantes y sus menús.

## 📸 Capturas de Pantalla
![restaurantList](https://github.com/user-attachments/assets/cfcb5de0-7766-4b37-8037-f01384687fd8)
![Restaurant Profile](https://github.com/user-attachments/assets/380c2202-4833-4a2c-aaf4-ff18b9079a7e)
![Menu Detail](https://github.com/user-attachments/assets/bfa68503-1cbc-474d-8be4-61b667f1b49a)
![Maps VIew](https://github.com/user-attachments/assets/d141261a-c591-4849-996e-7311c75edd1c)

