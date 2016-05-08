# Rails Template File with Bootstrap and Postgresql for Rails 5.0.0.rc1:

*invoking template:* rails new myapp -m template.rb --database=postgresql<br>

Template installs gems and runs commands to add/delete files and add/insert content to other files<br>

**Pages modified:**<br>
* creates notes.md that is in .gitignore <br>
* appends README.md <br>
* creates new .gitignore with all possible ignore files/extensions <br>
* removes test directory <br>
* removes application.css and adds application.css.scss with bootstrap scss defaults <br>
* replaces application.js file prefilled out <br>
* replaces application_helper.rb with title script <br>
* replaces application.html.erb with stock scripts and renders <br>
* creates _shim.html.erb file <br>
* creates _header.html.erb file <br>
* creates _footer.html.erb file <br>
* creates new gemfile with preloaded gems <br>
* prepends code at beginning of view pages after controller script is run <br>
* removes and creates routes.rb file after controller script is run <br>


**Run commands to:** <br>
* install capistrano <br>
* require capistrano in capfile <br>
* generate simple_form with bootstrap<br>
* install and generate rspec <br>
* create and migrate pgsql database <br>
* initialize guard <br>
* initialize git <br>
* rails g controller static_pages index about faq contact <br>

