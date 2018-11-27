require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle')

get ('/') do
  erb(:input)
end
