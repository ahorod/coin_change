require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('change').to_i.coin()
  erb(:result)
end
