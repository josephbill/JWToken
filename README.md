# README

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


# If i want to add Comments to both models , what can/should be the process ? 

Steps 

1. Create a commentsArticle model : id,articleid,body 
2. Create a commentsPhoto model : id,photoid,comment 


# OOP : Features of OOP 
1. Polymorphism : having many forms 

- comments in this case is polymporphic in nature i.e. exists for Articles and Photos 
the active record used in the polymorphic association process : belongs_to
