# 🍽️ Restaurants

## Description

**Restaurants** is a simple application that allows users to explore profiles of different restaurants, each with its own detailed menu. Users can view information about the dishes, such as ingredients and whether they are gluten-free, and they can also locate the restaurant using Maps for GPS directions.

In this sample app, the data is retrieved from a JSON file.

## 🛠️ Technologies Used

- **SwiftUI**: Used to build a modern and declarative user interface.
- **MVVM**: Architecture adopted to separate business logic from the user interface, making it easier to maintain and scale.
- **JSON**: Format used to store and transport restaurant and menu data.

## 🚀 Features

- **Restaurant Browsing**: Navigate through a list of restaurants with preview cards for their profiles.
- **Restaurant Profile**: Access a detailed page that includes information about the restaurant and its menu.
- **GPS Navigation**: A "Take me there" button that, when pressed, opens Maps to show directions to the restaurant.
- **Menu Details**: When selecting a menu item, users can see details such as ingredients and gluten information.

## 📂 Project Structure

- **App**
  - `RestaurantsApp.swift`: Entry point of the application.
- **Core**
  - **Components**
    - `GlutenView.swift`: Component indicating whether a dish contains gluten.
    - `IngredientsListView.swift`: View listing the ingredients of a dish.
    - `RestaurantCardView.swift`: Component for displaying a restaurant card in the list.
  - **Detail**
    - `DetailView.swift`: Screen showing the details of a restaurant menu item.
  - **Restaurants**
    - `RestaurantsView.swift`: Screen displaying the list of restaurants.
  - **RestaurantsProfile**
    - `RestaurantsProfileView.swift`: Screen showing the profile of a restaurant.
- **Models**
  - `MenuItem.swift`: Model representing a restaurant menu item.
  - `Restaurant.swift`: Model representing a restaurant.
- **Services**
  - `DataService.swift`: Service for handling data loading from a local JSON file.
- **Data**
  - `RestaurantData.json`: JSON file containing restaurant and menu data.

## 📸 Screenshots
![restaurantList](https://github.com/user-attachments/assets/cfcb5de0-7766-4b37-8037-f01384687fd8)
![Restaurant Profile](https://github.com/user-attachments/assets/380c2202-4833-4a2c-aaf4-ff18b9079a7e)
![Menu Detail](https://github.com/user-attachments/assets/bfa68503-1cbc-474d-8be4-61b667f1b49a)
![Maps VIew](https://github.com/user-attachments/assets/d141261a-c591-4849-996e-7311c75edd1c)
