# MovieReview website

- Live at https://review-movies.herokuapp.com/
- Github Repository: https://github.com/timmoon7/movieReview

## Overview

MovieReview is a web/mobile application for writing reviews of movies with 5 star rating.

## Tools and Technologies

- Trello: Planning/User stories/Scrum Board/Issue Tracking
- Dbdesigner: Database Modelling(ERD)
- Figme: Wireframing
- Ruby(2.4.3) on Rails(5.2.3): Development Languag & Flatform
- PostgreSQL(10): Database
- Heroku: Deployment Server (https://review-movies.herokuapp.com/)
- AMAZON S3: Storage Service
- Git: Version Control
- Brew: For installation of imagemagick

## Ruby Gems

- devise: User Authentication
- dotenv-rails: Loading environment variables
- paperclip: Easy upload management for ActiveRecord (File Attachment)
- aws-sdk-s3: Amazon Simple Storage Service (Amazon S3)
- pg: Ruby interface to the PostgreSQL RDBMS
- simple_form: Creating Rails forms easily
- bootstrap-sass: Sass-powered version of Bootstrap 3 (CSS)
- jquery-rails: For Star Rating (Raty)

## Planning & Desgin

> Pages:

- ![Home](https://raw.githubusercontent.com/timmoon7/pickitup/master/app/assets/images/home.png)
- ![Movie Details](https://raw.githubusercontent.com/timmoon7/pickitup/master/app/assets/images/show.png)

> ERD (Entity Relationship Diagram)

- ![ERD](https://raw.githubusercontent.com/timmoon7/pickitup/master/app/assets/images/erd.png)

# Features

- Sing-up, Login & Logout
- Ading, Editing and Viewing Movies including reviews with filtering by genres
- Uploading movie image

# Deployment instructions

- Clone the repo: https://github.com/timmoon7/movieReview.git
- Install gems: bundle install
- Create Database: rails db:create
- Migrate Database: rails db:migrate
- Start server: rails server
- Open in your browser and navigate to http://localhost:3000
