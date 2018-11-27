require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle')

get ('/') do
  game = CurrentGame.new()
  @riddle0 = game.riddles.values[0]
  @riddle1 = game.riddles.values[1]
  @riddle2 = game.riddles.values[2]
  erb(:input)
end

post('/result') do
  game = CurrentGame.new()
  game.answers[0] = params.fetch("answer0")
  game.answers[1] = params.fetch("answer1")
  game.answers[2] = params.fetch("answer2")

  if game.answers_riddle < game.riddles.values.length
    erb(:failure)
  else
    erb(:success)
  end

end
