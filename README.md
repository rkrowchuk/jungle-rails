# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of becoming familiar with Ruby on Rails. The following features were implemented: 
- Sold Out Badge: Displayed when a product has 0 quantity
- Admin Categories: Created a page to display and add new categories in Admin
- User Authentication: Implemented signup for new users, and login for existing users. Passwords are stored securely using bcrypt. 
- Order Details Enhancement: Display order details when a payment is made. 
- Admin Security: Implemented HTTP auth for Admin pages
- Checking Out with Empty Cart: When a cart is empty, the page displays a message instead of an empty cart. 
- Testing: Tests were ran using rspec and capybara. 

## Final Product
[Image of the home page](https://github.com/rkrowchuk/jungle-rails/blob/master/docs/Jungle-home.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
