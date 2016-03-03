README
======

### The drive-through is an application used to track group orders made to food-delivery services.



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# MoSCoW

## Must have

  - Different ordering_sessions to look back on a session and start a new session
  - User can see restaurant were we are ordering (with link) and some general information
  - User can see meals available by the restaurant
  - User can add a meal to a ordering_session with his name and the price
  - Users must be able to see who is ordering (and paying)

## Should have

  - Authenticated users
  - Autofill an order with all orders in a session on thuisbezorgd
  - Show the users that still need to pay the person that has ordered
  - Admin environment
  - Person that is ordering should have payment info from the users
  - Person that is ordering must be able to flag user order as paid
  - ability to close an ordering_session (or timer)
  - Person that is ordering should be able to see howmuch money people owe him or her

## Could have

  - Poll to choose a restaurant
  - rating/review of a session
  - options per meal (thuisbezorg sauce for example)
  - Slack integration for notifications


## Would have

# MVC

## Models

  - Ordering_session ((data: buyer:string, total_price:integer), has_many: Restaurants, has_many: orders)
  - Restaurant ( (data: descripton:string, category:string, url:string, address:string, phone_numer:string, rating:integer ) belongs_to: Ordering_session, has_many: meals )
  - Meals ( (data: name:string, description:string, price:integer, options:string) belongs_to: restaunt, has_many: orders)
  - Orders ( (data: member:string) belongs_to: ordering_session, has_many: meals)

## Views

  ordering_sessions#Index
  ordering_sessions#show (showed: Order.all, Restaurant.info, new order button)
  ordering_sessions#new
  order#new (showing: restaurant.info, restaurant.meals.all, total price )

## Controllers

  Ordering_sessions (index, show, new, create, edit, update)
  Restaurants (new, create, (with a scraper))
  Meals (new, create, (with a scraper))
  Order (new, create, edit, update, delete)


