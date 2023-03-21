# Pizza Restaurant
Restaurant-Pizza is a basic API built with ruby on rails and deployed using PostgreSql that implements associations.
The application has been built with the MVC design pattern.
## Prerequisites
In order to use this repository you will need the following:
- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB
## Built With
This application has been built with the following tools:
![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![ruby on rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
## Setup
You can setup this repository by following this manual
1. Clone the repository
    ```{shell}
   git clone git@github.com:richard200/phase-4-pizza-code-challenge.git
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rails db:migrate
   ```
4. Seed data into the database
   ```{shell}
   rails db:seed
   ```
5. Run the application/start server
    ```{shell}
    rails s
    ```
5. Open the application from your browser
    ```
   http://localhost:3000
   ```
## Application
This application is a simple web API that allows users to:
- Create Pizzas for a Restaurant.
- View all Restaurants and Pizzas.
- Filter Restaurant items by id.
- Delete a restaurant.
#### Pizza table
| COLUMN      | DATA TYPE                                       | DESCRIPTION                         |
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| name        | String                                          | The name of the pizza.              |
| ingredients | Text                                            | A list of ingredients in the pizza. |
| createdAt   | Date                                            | The date the pizza was created.     |
| updatedAt   | Date                                            | The date the pizza was updated.     |

#### Restaurant table
| COLUMN      | DATA TYPE                                       | DESCRIPTION                         |
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| name        | String                                          | The name of the restaurant.         |
| address     | String                                          | The address of the restaurant.      |
| createdAt   | Date                                            | The date the restaurant was created |
| updatedAt   | Date                                            | The date the restaurant was updated |

#### Restaurant_Pizza table
| COLUMN        | DATA TYPE                                       | DESCRIPTION                         |
|-------------  |-------------------------------------------------|-------------------------------------|
| id            | Integer                                         | Unique identifier.                  |
| price         | Decimal                                         | The price of the pizza.             |
| pitzza_id      | Integer                                        | The FK of the pizza.                |
| restaurant_id | Integer                                         | The FK of the restaurant.           |
| createdAt     | Date                                            | The date the association was created|
| updatedAt     | Date                                            | The date the association was updated|


### ROUTES
1. GET `/pitzzas` - List all pizza items.
   ```{json}
   ## RESPONSE SAMPLE
    [
      {
        "id": 1,
        "name": "Cheese",
        "ingredients": "Dough, Tomato Sauce, Cheese"
      },
      {
        "id": 2,
        "name": "Pepperoni",
        "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
      }
    ]
   ```

2. GET `/restaurants` - List all restaurant items.
   ```{json}
   ## RESPONSE SAMPLE
    [
      {
        "id": 1,
        "name": "Sottocasa NYC",
        "address": "298 Atlantic Ave, Brooklyn, NY 11201"
      },
      {
        "id": 2,
        "name": "PizzArte",
        "address": "69 W 55th St, New York, NY 10019"
      }
    ]
   ```

3. GET `/restaurants/:id` - Show specific restaurant item.
   ```{json}
   ## RESPONSE SAMPLE
    {
      "id": 1,
      "name": "Sottocasa NYC",
      "address": "298 Atlantic Ave, Brooklyn, NY 11201",
      "pizzas": [
        {
          "id": 1,
          "name": "Cheese",
          "ingredients": "Dough, Tomato Sauce, Cheese"
        },
        {
          "id": 2,
          "name": "Pepperoni",
          "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
        }
      ]
     }
   ```
4. DELETE `/restaurants/:id` - Delete a restaurant item.

5. POST `/restaurant_pizzas` - Create a pizza in a restaurant
    ```{json}
    ## REQUEST SAMPLE
    {
      "price": 5,
      "pizza_id": 1,
      "restaurant_id": 3
    }
    ## RESPONSE SAMPLE
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    }
    ```
## LICENSE
This repository is distributed under the MIT License
```markdown
Copyright 2023 Richard Ngeti
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”),
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
## Author
This repository is maintained by:
- [Richard Ngeti](https://github.com/richard200)