# cheatsheet for rails




## commands for creating first rails app
```
rails new scheduled_tweets
```
## bundle command for checking gems / installing gems
```
bundle
```
## command for starting rails server

```
rails server or rails s
```
## MVC - model view controller

GET  /about HTTP/1.1
Host : localhost 127.0.0.1

## Routes
matches for URLS that is requested
GET for "/about"
-- i see you have requested "/about", i we'll give that for the about-controller to handle

## Models
This is a database wrapper
Users
- query for records
- wrap individual records

## Views 
your response body content
- HTML
- CSV
- PDF 
- XML
This is what you get to the browser when you request 

## Controllers
Decides how to process a request and define a response

## command for creating a model
```
rails generate model User email:string password_digest:string
```
## command for migrate
```
rails db:migrate
```

## command after modifying the model
rails db:rollback

## command for migrating the model
rails db:migrate