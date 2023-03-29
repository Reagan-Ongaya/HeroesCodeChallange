# Heroes API

## Entity Relational Diagram
<img scr="https://moringa.instructure.com/courses/261/files/205969/preview">

## introduction. 
A Hero API

It has 3 tables hero, power and heropowers
 
The following routes are available

* GET /heroes: Returns a list of all heroes in JSON format.
* GET /heroes/:id: Returns a hero and their associated powers in JSON format. If the hero is not found, it returns an error with status code 404.

* DELETE /hero/:id: Deletes a hero and its associated hero powers from the database. If the hero is not found, it returns an error with status code 404.

* GET /power: Returns a list of all powers in JSON format.

* * POST /hero_powers: it creates a new HeroPower that is associated with an existing Power and Hero.if it is not created succesfully it returns an error.

## Ruby Version

2.7.6

## System Dependencies

Developer tools (VS code, build-essential package on Ubuntu, Ruby on rails)

## First-Time Setup

1. Read this README ;
2. Install dependencies using `bundle`.
3. Seeding test data-rails db:seed to seed the data.
4. Turn on the server with `rails s`- The server will run on `http://localhost:3000`