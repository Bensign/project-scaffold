require 'rubygems'
require 'sinatra'
require 'sinatra/content_for'
require 'haml'
require 'mongo'
require 'active_support/core_ext'

# Add the current directory to the load path
$: << File.expand_path(File.dirname(__FILE__))

set :views,         './views'
set :public_folder, './static'

get '/' do
  haml :index
end