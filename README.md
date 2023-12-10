# Event Management Application

## Project Overview
Event Management is a Ruby on Rails application that allows users to sign up, sign in, and log out, and manage events (create, edit, or delete), join an event or cancel his attendance. In the web application, events are available only for signed-in users. Through the API, events can be created, viewed, modified, or deleted and the respective endpoints are accessible without any authorization layer (due to the structure of the project description).

Since the authentication system is built on Devise, it also provides the option to generate a new password in case a user forgets it. The current version of the application does not integrate the email configuration.

## Tech Stack
- Ruby 3.2.2
- Ruby On Rails 7.1.2
- PostgreSQL 13
- Twitter Bootstrap 5.3.2


## Install

### 1. Clone the repository

```shell
git clone git@github.com:rdudacz/event_management.git
cd event_management
```

### 2. Install gems

```shell
bundle install
```

### 3. Create a database structure (and populate it with data)

Depending on the local configuration of your database server, you might need to properly set up the application's connection to your local PostgreSQL (can be found in `config/database.yml`).

```shell
rake db:create
rake db:migrate
rake db:seed
```

### 4. Run the app

```shell
rails s
```
### 5. Troubleshooting

It might happen that after running the server, you experience the following error:
```shell
The asset "application.css" is not present in the asset pipeline.
```

To resolve it, please execute the following command from the application's directory:
```shell
rake assets:precompile
```

## Seeding data

The application also provides with a set of prepared data, specifically `10 events` and `5 users`. The following user accounts can be seeded to the application and are ready to use immediately:

- admin@test.com / admin123456
- pepe@test.com / pepe123456
- alex@test.com / alex123456
- radek@test.com / radek12346
- guest@test.com / guest123456

## Testing

Tests can be run by prompting `rails test:models`.