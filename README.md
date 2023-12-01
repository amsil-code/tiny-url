# TinyURL (Ruby on Rails)

TinyURL is a URL shortner which allows user to submit a URL which will then be shortened. When users click on the short URL they are redirected to the long URL. It also track the IP address of each visit to a URL.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing
* Ruby version
 2.6.6

 ```
 rvm install 2.6.6
 ```
* Database
postgresql

```
brew install postgres
```


* Clone the repository


```
mkdir tiny-url
cd tiny-url
git https://github.com/usmanasifzai/tiny-url.git
cd tiny-url
bundle install
```

* Database creation

```
  rails db:create
  rails db:migrate
```
* Run app locally on 3000 port

```
rails server
```

it will run the app on this url. Visit it and you can play with it
http://localhost:3000/

* How to run rspec test coverage

```
rspec
```

### Gems Used
- Used bootstrap 5 gem for designing and responsive website
- Used rspec-rails gem for test coverage
