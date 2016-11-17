# Tutorial app of React On Rails

This is a demo app on how to use ReactOnRails for integrating react with rails.

## Notes on React On Rails Configuration

### Setup
* Generate a new rails app: `rails new <app>`
* Add dependency to Gemfile: `gem: "react_on_rails"`
* Optional: add rspec to Gemfile: `gem 'rspec-rails'`
* Install gems: `bundle`
* Commit all changes
* Setup react without redux: `rails g react_on_rails:install`
* or Setup react with redux: `rails g react_on_rails:install -R`
* or Setup react with redux and use Node for server rendering: `rails g react_on_rails:install -R -N`
* Update gems and npm deps: `bundle & npm i`
* Run app: `npm run rails-server`

### Client Application Files
* A new directory `client` is created at root. This is where to put all client application codes
* It is recommended to put all application logics at the `app/bundles` subfolder, with each domain has its own subfolder
* Each domain following the example react-redux folder structure: `startup, store, constants, actions, reducers, components, containers`
* Render react app/components in Rails view template file with helper `react_component`

## Key Configuration Files
* `webpack.config.js`: This is where to configure webpack for building client bundles
* `config/initializers/react_on_rails.rb`: This is where to configure the react_on_rails gem
* `config/initializers/assets.rb`: This file is updated by the gem to include the webpack generated bundles as rails assets
* Optional `spec/rails_helper.rb`: This file is updated by the gem to use ReactOnRails to compile assets for testing
 
