#Features (what will it do?)

- Creating / edit Recipes
- Display all recipes with pictures in a grid
- Active Admin functionality - User - admin role flag in User model
- Comment section for individual recipes and meal menus
- Rails native authorize
- Send email
- Egar loading
- Search functionality

#Time permitting items: (in no particular order)
- Favorite recipes
- Select/unselect recipes to be part of a meal menu

#User Stories

- User should be able to browse recipes on home page
- User should be able to create new recipe
- User should be able to edit personal recipe
- User or Visitor should be able to comment on recipe
- User should recive email
- Users should be able to edit their profile
- Users should be able to upload an avatar
- Users should be able to browse recipes (paginated using kaminari)
- Visitors should be able to visit the Recipe home page
- Visitors should be able to sign up
- Visitors should be able to sign in
- Users should be able to search across recipes, meal menu, and comments
- Admins should be able to visit the admin section
- Non-Admins will not be able to access the active admin
- Admin should be able to CRUD Recipe
- Admin should be able to CRUD Users
- Admin should be able to CRUD Comments
- Admin should be able to CRUD Meal

#Future:
- User should be able to browse personal meal menus
- User should be able to create new meal menus
- User should be able to edit personal meal menu

#Tasks

#Create the action plan for creating the app - Monday by noon
#Create an 'About' page and create a link on the home page
#Visitors should be able to visit the home page (set milestone )

- Setup Rails app
- Configure my root route
- Create my welcome controller and welcome/home page
- Setup GitHub repo
- Setup initial heroku app and push to it

#Create all models - Monday COB

##Recipe
- name:string
- ingredient:text
- steps:text
- user_id:integer
- image:string

- (if needed) url:string

##MealMenu
- recipe_id:integer
- user_id:integer
- name:string

##User
- name:string
- username:string
- email:string
- admin:boolean

##Comment
- description:text
- user-id:integer
- recipe_id:integer

#Set up the relationships

- recipe belongs_to user
- recipe belongs_to meal
- meal belongs_to user
- meal has_many recipes
- user has_many recipes
- user has_many meals
- recipe has_many comments
- comment belongs to recipe

#Active Admin
- Setup Active Admin
- Create a seed file to populate data for recipes to enable testing functionality
- Verify with Active Admin all models are functioning correct

#User should be able to view Recipe

- Create the home page that will display all recipes in a grid format
- Create button links to access additional meals and comments functionality
- Create the paginate functionality

#User should be able to create a Recipe

- Create form to add the recipe fields
- Create link from home page to new item
- Users should be able to upload an avatar and images for recipes
- Create link in New to return to home page

#User should be able to edit a Recipe

- Create form to edit the recipe fields
- Create link from home page to edit item
- Create link in Edit to return to home page
- Create link in Edit to show the updated information

#User should be able to create a comment for a Recipe

- Create form to enter a comment
- Create link from home page to enter a comment
- Create link in Edit to return to home page
- Create link in Edit to show the updated information


#Install carrierwave gem
- Create an uploader
- Setup the initializer
- Setup S3 security
- Setup S3 bucket
- Install fog gem
- Install minimagic gem
- Modify the user form with a file field and cache field
- Adjust the controller params

#Technologies
- Active admin
- S3
- Carrierwave / Fog
- Environment variables
- Kaminari
- bcrypt
- Search engine

#Risks

- Have not setup a search engine and need to research
- Still new at HTML/CSS/SASS might need some research time
- Have not worked with bcrypt and need to research

#Controllers

- Session
- User account
- Recipe
- Meals
- Search
