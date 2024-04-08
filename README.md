  
# Food Search Application


The Food Search Application is a Django-based RESTful API enabling users to search and filter food menu items by various criteria. Users can specify categories, average ratings, toppings, or type (vegetarian/non-vegetarian) to find their desired meal.
## Steps to Run this Project

Step 1: Clone the project
https://github.com/truptighadge/Food-Search-Application
 

Step 2: cd ~/food_search_application

Step 3: Create Virtualenv (Python 3) virtualenv -p python3 env

Step 4: Activate Virtualenv source env/bin/activate

Step 5: Install Dependencies pip install -r requirements.txt

Step 6: Migrate To Database python manage.py migrate

Step 7: Create Admin python manage.py createsuperuser # Give Username and Password of Your Choice

Step 8: Run the Project python manage.py runserver # This will run the project on 127.0.0.1:8000

Step 9: Open URL http://127.0.0.1:8000 in the browser

Step 10: http://127.0.0.1:8000/admin/  to access admin panel. ( Provide Username and Password you used while creating admin) and entries using the admin panel
## API Reference

## Authentication
   ### Registration
    Endpoint: POST /accounts/register/
    Description: Register a new user.

   ### Login
    Endpoint: POST /accounts/login/
    Description: Login providing valid credentials.

## Filter

### Filter by category 
    Endpoint: GET /app/?category=Pizza,Pasta
    Description: Filters products based on the specified categories, allowing multiple categories separated by commas.  

  
### Filter by type
    Endpoint: GET /app/?type=Veg
    Description: Filters products based on the specified type (vegetarian or non-vegetarian)

### Filter by multiple parameters 
    Endpoint: GET /app/?rating_min=4&rating_max=4.5&type=Veg&toppings=Cheddar&category=Curry
    Description: Filters products based on multiple criteria such as minimum rating, maximum rating, type, toppings, and category.   

