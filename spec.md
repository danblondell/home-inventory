# Specifications for the Sinatra Assessment

## Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
- [x] Include user accounts
- [ ] Ensure that users can't modify content created by other users
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [x] Include user input validations
- [ ] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

## Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message



# Project Specific Specs - Home Inventory
## General
- [x] Update config.ru to include controllers for added models

## Functions
General:
- [x] Add layout with sign out, create room, create item, etc
- [x] Can I add some CSS styling? Where does it go? Public folder?
- [ ] Add error messages where needed
- [ ] Make sure rooms are only found through user
- [ ] Make sure items are only found through rooms or users
User:
- [x] Create user
- [x] Login as user
- [ ] Index of all a user's items, sorted by room, with room assignment editable en-mass.
Room:
- [x] Create a room
- [x] View all of a user's rooms
- [X] If there are no rooms in someone's account, prompt to create a new room
- [x] If there are no items in a room, prompt to create a new item
- [x] View a room page with all of its objects
- [x] Edit room name
- [x] Delete room
- [ ] Deleting a room should reassign all its items to new room object: No Room Assigned
Items:
- [x] Create a new item and assign it to a room through a dropdown
	- [x] Set datepicker and category list in item form
- [ ] Edit any details related to an object, including moving its room
- [ ] Delete item


## User
Attributes:
- [x] Username, Email, First Name, Password
Relationships:
- [x] Has many Rooms
- [x] Has many Items through Rooms 


## Room
Attributes:
- [x] Name, Notes, Owner ID
Relationships:
- [x] Belongs to User
- [x] Has many Items


## Item
Attributes:
- [x] Name, Brand, Date of Purchase, Cost, Category, Source, Notes, Room ID
	- [x] Find best practice for recording dates (not timestamps) in activerecord
	- DROPPED [ ] Should categories be predefined, and if so how can they be predefined? Should category be another object?
	- DROPPED [ ] Ideally you should be able to sort by all items of the same category. e.g. domain.com/items/categories/books
Relationships:
- [x] Belongs to Room

