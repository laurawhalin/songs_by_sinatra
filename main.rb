require 'sinatra'
require 'slim'
require 'sass'
require 'sinatra/reloader' if development?

get('/styles.css'){ scss :styles }

get '/' do
  slim :home
end

get '/about' do
  @title = "All About This Website"
  slim :about
end

get '/contact' do
  @title = "Contact Us About Sinatra"
  slim :contact
end

not_found do
  slim :not_found
end
