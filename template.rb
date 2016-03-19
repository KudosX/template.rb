# http://guides.rubyonrails.org/rails_application_templates.html
# http://guides.rubyonrails.org/generators.html
# http://www.rubydoc.info/github/wycats/thor/Thor/Actions

# invoking template: rails new myapp -m template.rb --database=postgresql

# Notes.md, Ignore rails doc files, .DS_Store, etc.
# ===================================================

file 'notes.md', <<-CODE
  ###Application Notes###
  Gemset ruby-2.3.0@rails5.0.0.beta3
  Ruby 2.3.0
  Rails 5.0.0.beta3
CODE

remove_file 'README.md'
file 'README.md', <<-CODE
## Welcome to my Application, based on:
  Gemset ruby-2.3.0@rails5.0.0.beta3
  Ruby 2.3.0
  Rails 5.0.0.beta3
* more stuff here
* and even more stuff here
CODE

remove_file '.gitignore'
file '.gitignore', <<-CODE
config/database.yml
!.keep
*notes.md
*.DS_Store
*.bak
*.swo
*.swp
/.bundle
/.env
/.foreman
/coverage/*
/db/*.sqlite3
/db/*.sqlite3-journal
/db/*.pg
/log/*
!/log/.keep
/public/uploads
/tags
/tmp/*
*~

# Compiled source #
###################
*.com
*.class
*.dll
*.exe
*.o
*.so

# Packages #
############
# it's better to unpack these files and commit the raw source
# git has its own built in compression methods
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

# Logs and databases #
######################
*.log
*.sql
*.sqlite

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files #
#############
nbproject
.~lock.*
.buildpath
.idea
.project
.settings
composer.lock
CODE

# Clean up Assets
# ==================================================

puts 'remove test directory'
remove_dir 'test'

remove_file 'app/assets/stylesheets/application.css'
file 'app/assets/stylesheets/application.css.scss', <<-CODE
    @import 'bootstrap-sprockets';
    @import 'bootstrap';
    @import 'font-awesome';


/* mixins, variables, etc. */

$gray-medium-light: #eaeaea;

@mixin box_sizing {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sitting: border-box;
}

/* miscellaneous */

.debug_dump {
  clear: both;
  float: left;
  width: 100%;
  margin-top: 45px;
  @include box_sizing;
}

  /* universal */

body {
  padding-top: 60px;
}
section {
  overflow: auto;
}
textarea {
  resize: vertical;
}
.center {
  text-align: center;
  h1 {
    margin-bottom: 10px;
  }
}

/* typography */

h1, h2, h3, h4, h5, h6 {
  line-height: 1;
}
h1 {
  font-size: 3em;
  letter-spacing: -2px;
  margin-bottom: 30px;
  text-align: center;
}
h2 {
  font-size: 1.2em;
  letter-spacing: -1px;
  margin-bottom: 30px;
  text-align: center;
  font-weight: normal;
  color: $gray-light;
}
p{
  font-size: 1.1em;
  line-height: 1.7em;
  text-align: center;
}

/* header */

#logo {
  float: left;
  margin-right: 10px;
  font-size: 1.7em;
  color: red;
  text-transform: uppercase;
  letter-spacing: -1px;
  padding-top: 9px;
  font-weight: bold;
  &:hover {
    color: darkred;
    text-decoration: none;
  }
}

/* footer */

footer {
  margin-top: 45px;
  padding-top: 5px;
  border-top: 2px solid $gray-medium-light;
  color: $gray-light;
  a{
    color: $gray;
    &:hover {
      color: $gray-darker;
    }
  }
  small {
    float: left;
  }
  ul {
    float: right;
    list-style: none;
    li {
      float: left;
      margin-left: 15px;
    }
  }
}

/* sidebar */

aside {
  section.user_info {
    margin-top: 20px;
  }
  section {
    padding: 10px 0;
    margin-top: 20px;
    &:first-child {
      border: 0;
      padding-top: 0;
    }
    span {
      display: block;
      margin-bottom: 3px;
      line-height: 1;
    }
    h1 {
      font-size: 1.4em;
      text-align: left;
      letter-spacing: -1px;
      margin-bottom: 3px;
      margin-top: 0px;
    } }
}
.gravatar {
  float: left;
  margin-right: 10px;
}
.gravatar_edit {
  margin-top: 15px;
}

/* forms */

input, textarea, select, .uneditable-input {
  border: 1px solid #bbb;
  width: 100%;
  margin-bottom: 15px;
  @include box_sizing;
}
input {
  height: auto !important;
}

#error_explanation {
  color: red;
  ul {
    color: red;
    margin: 0 0 30px 0;
  }
}
.field_with_errors {
  @extend .has-error;
  .form-control {
    color: $state-danger-text;
  }
}

.checkbox {
  margin-top: -10px;
  margin-bottom: 10px;
  span {
    margin-left: 20px;
    font-weight: normal;
  }
}
#session_remember_me {
  width: auto;
  margin-left: 0;
}

/* Users index */

.users {
  list-style: none;
  margin: 0;
  li {
    overflow: auto;
    padding: 10px 0;
    border-bottom: 1px solid $gray-lighter;
  }
}

/* Responsive p105, p122, rails4inaction */

@media(min-width: $screen-sm-min) {
          header {
            h1, h2, h3, h4, h5, h6 {
              max-width: 55%;
  }
}
          ul.actions {
            position: absolute;
            bottom: -2px;
            right: 2px;
            max-width: 45%;
            text-align: right;
  }
}

@media(max-width: $screen-xs-max) {
  input#search {
    display: inline-block;
    vertical-align: middle;
    width: auto;
  }
}

@media(max-width: $screen-sm-max) {
  ul.actions .form-inline {
    padding-bottom: 5px;
  }
}

CODE

remove_file 'app/assets/javascripts/application.js'
file 'app/assets/javascripts/application.js', <<-CODE
    //= require jquery
    //= require jquery_ujs
    //= require bootstrap-sprockets
    //= require_tree .
CODE

remove_file 'app/helpers/application_helper.rb'
file 'app/helpers/application_helper.rb', <<-CODE
module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "RoR Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
CODE

remove_file 'app/views/layouts/application.html.erb'
file 'app/views/layouts/application.html.erb', <<-CODE
<!DOCTYPE html>
<html>
  <head>
    <title><%= full_title(yield(:title)) %></title>
    <meta name=“viewport” content=“width=device-width, initial-scale=1, maximum-scale=1”>
    <%= stylesheet_link_tag 'application', media: 'all' %>
    <%= javascript_include_tag 'application' %>
    <%= csrf_meta_tags %>
    <%= render 'layouts/shim' %>
  </head>
  <body>
    <%= render 'layouts/header' %>
    <div class="container">
      <%= yield %>
      <%= render 'layouts/footer' %>
      <%= debug(params) if Rails.env.development? %>
    </div>
  </body>
</html>
CODE

# puts 'insert_into_file: responsive code in application.html.erb'
# insert_into_file "app/views/layouts/application.html.erb", :after => "<head>\n" do
#  "<meta name=“viewport” content=“width=device-width, initial-scale=1, maximum-scale=1”>""\n"
# end

# version 2 works as well:
#insert_into_file 'app/views/layouts/application.html.erb',
   #'<meta name=“viewport” content=“width=device-width, initial-scale=1”>'"\n", :after => "<head>\n"
   # or this line:<meta name="viewport" content="width=device-width, initial-scale=1">

file 'app/views/layouts/_shim.html.erb', <<-CODE
<!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js">
  </script>
<![endif]-->
CODE

file 'app/views/layouts/_header.html.erb', <<-CODE
<header class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <%= link_to "sample app", root_path, id: "logo" %>
    <nav>
      <ul class="nav navbar-nav navbar-right">
        <li><%= link_to "Home", root_path %></li>
        <li><%= link_to "About", static_pages_about_path %></li>
        <li><%= link_to "FAQ", static_pages_faq_path %></li>
        <li><%= link_to "Contact", static_pages_contact_path %></li>
      </ul>
    </nav>
  </div>
</header>
CODE

file 'app/views/layouts/_footer.html.erb', <<-CODE
<footer class="footer">
  <small>
    The <a href="http://www.duckduckgo.com/">Duck Duck Go Search</a>
    and one and only <a href="http://www.KudosX.com/">KudosX</a>
  </small>
  <nav>
    <ul>
      <li><%= link_to "About", static_pages_about_path %></li>
      <li><%= link_to "Contact", static_pages_contact_path %></li>
      <li><a href="http://www.KudosX.com">KudosX.com</a></li>
    </ul> </nav>
</footer>
CODE

# this creates 99 fake users using faker gem


remove_file 'db/seeds.rb'
create_file 'db/seeds.rb', <<-CODE

                 User.create!(name:  "Example User",
                              email: "max@test.com",
                              password:              "foobar",
                              password_confirmation: "foobar", admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-\#{n+1}@example.com"
  password = "password"
  User.create!(name:  name, email: email, password: password,
               password_confirmation: password)
end
CODE



# Gems
# ==================================================

# Gems for all groups; production, development and test
# General Gems:

puts 'replaced Gemfile with my own Gemfile'
remove_file 'Gemfile'
create_file 'Gemfile'

add_source 'https://rubygems.org'

  gem 'rails', '>= 5.0.0.beta3'
#  gem 'rails', '4.2.5'
  gem 'pg'
  gem 'puma'
# Segment.io as an analytics solution (https://github.com/segmentio/analytics-ruby)
  gem 'analytics-ruby'
  gem 'sass-rails'
  gem 'uglifier'
# Charts
# gem 'chartkick'
# Admin dashboard
# gem 'administrate', ~> '0.1.3'
  gem 'coffee-rails'
  gem 'jquery-rails'
# gem 'turbolinks'
  gem 'jbuilder'
  gem 'sdoc', '~> 0.4.0', group: :doc
# Use ActiveModel has_secure_password
  gem 'bcrypt'
# Security testing
  gem 'brakeman'
  gem 'bootstrap-sass'
  gem 'font-awesome-rails'
  gem 'simple_form'
  gem 'omniauth'
  gem 'devise', :github => 'plataformatec/devise', :branch => 'master'
# gem 'devise'
# gem 'pundit'
  gem 'active_model_serializers'
  gem 'carrierwave'
# access to mailchimp API
  gem 'gibbon'
# for static pages like “about”
# gem 'high_voltage'
# helps with error messages
# gem 'better_errors'
# suppresses distracting messages in log files
  gem 'quiet_assets'
  gem 'twilio-ruby'


# Development and Test Gems:

gem_group :development, :test do

  # Use Capistrano for deployment
  gem 'capistrano-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  # Spring speeds up development by keeping application running in background.
  gem 'spring'
# until rspec is fullying compliant with rails5
  gem 'rails-controller-testing', :git => 'https://github.com/rails/rails-controller-testing'
  gem 'rspec-rails', '3.5.0.beta2'
#  gem 'rspec-rails'
  gem 'guard'
  # Guard for automatically launching your specs when files are modified.
  # if use then run “bundle exec guard init guard-rspec”
#  gem "guard-rspec"
end

# Test Gems:

gem_group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'email_spec'
  # Fake data generator for testing
  gem 'faker'
end

# Production Gems:

gem_group :production do
  # For deployment to Heroku
  gem 'rails_12factor'
  # Use Unicorn as the HTTP server
  gem 'unicorn'
  # Ruby cloud services library for AWS for EC2, S3, etc.
  gem 'fog'
end

# GEMS END
# ==================================================

run "bundle install"

# Capistrano Basic Configuration
# ==================================================
puts 'cap install'
run "cap install"

puts 'require capistrano/rails in capfile'
insert_into_file "Capfile", :after => "require 'capistrano/deploy'\n" do
  "require 'capistrano/rails'""\n"
end

# Installs
# ==================================================

puts 'installs simple form'
run "rails generate simple_form:install --bootstrap"

puts "Installing rspec"
run "rails generate rspec:install"

# puts 'Initialize pundit'
# run "rails generate pundit:install”

# Initializes
# ==================================================
 puts 'create and migrate pgsql database'
 run "rake db:create db:migrate"

# puts 'create fake database using seeds.rb'
# run "rake db:seed"

puts 'Initialize guard'
# run “spring stop”
run "bundle exec guard init"


# Simple Controller and add provide in view pages
#===================================================

puts 'Simple Controller with actions Index, About, FAQ, Contact'
run 'rails g controller static_pages index about faq contact'

prepend_file 'app/views/static_pages/index.html.erb', <<-CODE
<% provide(:title, 'Home') %>
CODE

prepend_file 'app/views/static_pages/about.html.erb', <<-CODE
<% provide(:title, 'About') %>
CODE

prepend_file 'app/views/static_pages/contact.html.erb', <<-CODE
<% provide(:title, 'Contact') %>
CODE

prepend_file 'app/views/static_pages/faq.html.erb', <<-CODE
<% provide(:title, 'FAQ') %>
CODE

remove_file 'config/routes.rb'
create_file 'config/routes.rb', <<-CODE
Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/faq'

  get 'static_pages/contact'

end
CODE

# Git: Initialize
# ==================================================

git :init
git add: "."
git commit: "-m 'Initial commit - generated by template.rb'"


# Success!
# ==================================================

 puts 'Kudos, your rails application is good to go!!'