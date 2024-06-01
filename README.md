# Overview

This project is a Web App which uses Django (Python framework) to build a Movie collections and review app ladened with news/blogs section. 

For this app to work, I installed the Django that is compactible with my python version. I also installed xampp for the phpmyadmin interface of the mysql database. To start the Django server, I used "python manage.py runserver" at the DOS command prompt. After this has started the Django server, the browser needs to be launched and the following URL has to be used to launch the application: http://localhost:8000/

 Then the Xampp control panel was used to start the mysql server which runs on port 3306. To launch that I use the http://localhost and then click on phpmyadmin.

The web app launches with the list of available movie titles, short description, movie cover page in image form and the movie link, if it exists. There is also a search box to search for a particular movie.

There are header and footer regiors which carry important links like login, logout, copyright information.

The movie and news contents are uploaded from the admin back-end. To launch the admin page, I use this URL: http://localhost:8000/admin.

I created a database called moviereview with 3 tables (movie, news and reviews) including the default tables that came with Django (auth_group, auth_group_permissions, auth_permission, auth_user, auth_user_groups, django_session, etc.)



The sole purpose of writing this Web app is to demonstrate the knowledge of Web app development that I have acquired within this period. To practically demonstrate the CRUD operations of the database. C- Create, R- Read, U- Update, D- Delete as new movie and news content can be added, fetched out, updated and deleted.

{Provide a link to your YouTube demonstration.  It should be a 4-5 minute demo of the software running (starting the server and navigating through the web pages) and a walkthrough of the code.}

[Software Demo Video](http://youtube.link.goes.here)

[Github Url] (https://github.com/lagoke/Movieapp.git)

# Web Pages

1. base.html (it is like a master page which is referenced by all the pages. It contains the header, footer with the signup, login, logout, news urls)
2. The homepage (home.html) - The first page that dynmically launches the available movie details and header and footer.
3. signupaccount.html in the accounts folder being a standalone app but related to other pages- Provides a form to register an account
4. loginaccount.html - provides the login page with username and password
5. details.html - Contains the details of the individual movie contents
6. createreview.html - This page provides a form to type in the review for a partivular movie.
7. updatereview.html - This page loads existing review about a movie and then allows for editing and re-submission.
8. news.html - It loads the news contents dynamically.


# Development Environment

I used Django (Python framework) and Xampp server together with VS-code to build the app.

The predominant programming language is Python while I used Mysql as the database engine.

# Useful Websites

{Make a list of websites that you found helpful in this project}
* [Djaango Official Documention website](https://docs.djangoproject.com/en/5.0/)
* [Django tutorials on tutorialspoint ](https://www.tutorialspoint.com/django/index.htm)
* [Build a Portfolio app with Django ] (https://realpython.com/get-started-with-django-1/)

# Future Work
* Would like to further customize the admin page
* Include the verification of email address as a requirement for sign up
