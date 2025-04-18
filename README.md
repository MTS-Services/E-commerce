# Ecommerces_app
<p align="center">
  <img src="https://img.shields.io/github/stars/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/forks/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/actions/workflow/status/SinaSys/flutter_japanese_restaurant_app/main.yml?label=CI&logo=github">
  <img src="https://img.shields.io/github/v/release/SinaSys/flutter_japanese_restaurant_app?label=Release&logo=semantic-release">
  <img src="https://img.shields.io/github/last-commit/SinaSys/flutter_japanese_restaurant_app?label=Last%20commit">

## App Screenshots

Splash                    |   
:-------------------------:

![](https://github.com/MTS-Services/E-commerce/blob/main/screenshots/Green%20and%20Black%20Modern%20Sales%20Marketing%20Presentation.png?raw=true)


| Onboarding Screen        |
:-------------------------:

![](https://github.com/MTS-Services/E-commerce/blob/main/screenshots/Neon%20gradient%20mobile%20mockup%20instagram%20post%20.png?raw=true)


| Authentication Screen |
:-------------------------:

![](https://github.com/user-attachments/assets/ea7f8050-cdf1-45bd-9f56-4f0ac07c69ce)


 |   Home Screen, Shop  |
|:-------------------------:|

![](https://github.com/MTS-Services/E-commerce/blob/main/screenshots/Purple%20App%20Phone%20Mockup%20Sales%20Marketing%20Video%20Presentation.png?raw=true)


  | Categories, Checkout, Submit Order |                                                     
  | :-------------------------: |

![](https://github.com/MTS-Services/E-commerce/blob/main/screenshots/Purple%20App%20Phone%20Mockup%20Sales%20Marketing%20Video%20Presentation%20(1).png?raw=true)



 |  Review & Ratings        |  
 :-------------------------:

![](https://github.com/MTS-Services/E-commerce/blob/main/screenshots/Purple%20Pink%20Gradient%20Mobile%20Application%20Presentation%20(1).png?raw=true)


## 🚀 Features :
```
• Bottom navigation animation when switch from one screen to another
• Review & Ratings
• Order 
• Cart 
• Display clothes list on the home  screen
• Real-time calculation of total price in the cart screen
• State management with GetX 
```


## Directory Structure (GetX version)
```
📂lib
 │───main.dart  
 │───📂core  
 |   │──app_asset.dart
 |   │──app_color.dart
 |   │──app_data.dart
 |   │──app_icon.dart
 |   │──app_style.dart
 |   │──app_theme.dart
 |   └──app_extension.dart
 └───📂src
     │────📂model
     │    │──bottom_navigation_item.dart
     |    │──clothes.dart
     |    └──clothes_category.dart
     └────📂view
     |    │───📂screen
     |    |   |──cart_screen.dart
     |    |   |──favorite_screen.dart
     |    |   |──product_detail_screen.dart
     |    |   |──clothes_list_screen.dart
     |    |   |──home_screen.dart
     |    |   └──profile_screen.dart
     |    │───📂widget
     │    |   |──counter_button.dart
     │    |   |──custom_page_route.dart
     │    |   |──empty_widget.dart
     │    |   |──fade_animation.dart
     │    |   |──clothes_list_view.dart
     │    |   |──page_transition.dart
     |    |   └──scale_animation.dart
     └────📂controller
          └──ui_controller.dart



