# Specifications for the Sinatra Assessment

## Specs:
- [x] Use Sinatra to build the app
- [ ] Use ActiveRecord for storing information in a database
- [ ] Include more than one model class (list of model class names e.g. User, Post, Category)
- [ ] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
- [ ] Include user accounts
- [ ] Ensure that users can't modify content created by other users
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [ ] Include user input validations
- [ ] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

## Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message



# Project Specific Specs - Home Inventory

## User
Attributes:
- [ ] Username, Password, First Name, Last Name, Address
	- [ ] Find best practice for recording mailing addresses in activerecord
Relationships:
- [ ] Has many Rooms
- [ ] Has many Items through Rooms 


## Room
Attributes:
- [ ] Name, Notes, Owner ID
Relationships:
- [ ] Belongs to User
- [ ] Has many Items


## Item
Attributes:
- [ ] Name, Brand, Date of Purchase, Cost, Category, Source, Notes, Room ID
	- [ ] Find best practice for recording dates (not timestamps) in activerecord
	- [ ] Should categories be predefined, and if so how can they be predefined? Should category be another object?
	- [ ] Ideally you should be able to sort by all items of the same category. e.g. domain.com/items/categories/books
Relationships:
- [ ] Belongs to Room

