## Authentication with Rails, implemented in React

This repo is a template for implemeting rails authentication with bcrypt cookies, with full functionalities in React with functional components and hooks (as opposed to class components): 
1. Register
2. Login
3. Check for user status
4. Logout

Get started with:

Rename the file to what you would name your Rails App. ***Note:*** Rails is set up as an app rather than an api to use the authentication methods here, the database is *PostgreSQL*. Renaming is essential before running the `db:create` command as it will either create a new DB to match the name or replace the one with the same existing name.
In server:

Update `Gemfile.rb` accordingly:
- Check for a current version of **bcrypt** [here](https://rubygems.org/gems/bcrypt/versions/3.1.12)
- Check for a current version of **rack-cors** [here](https://rubygems.org/gems/rack-cors)
- Add other gems you might want to use.

```rb
bundle
# You might be asked to install additional packages
rails db:create
rails db:migrate
```

In client:
```js
npm i
```
Dependencies are installed for several modules, but other installs might be required depending on the needs of your App.

> Update index.html ICON and TITLE
Link for material icons is there, but not for fonts.


Lastly, delete the contents on this README.