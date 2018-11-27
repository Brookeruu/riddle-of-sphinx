require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle')

get ('/') do
  game = CurrentGame.new()
  CurrentGame.random_riddles(game.riddles.keys.length)
  @riddle0 = game.riddles.values[CurrentGame.value_indexes[0]]
  @riddle1 = game.riddles.values[CurrentGame.value_indexes[1]]
  @riddle2 = game.riddles.values[CurrentGame.value_indexes[2]]
  erb(:input)
end

post('/result') do
  game = CurrentGame.new()
  game.answers[0] = params.fetch("answer0")
  game.answers[1] = params.fetch("answer1")
  game.answers[2] = params.fetch("answer2")

  @test_array = CurrentGame.value_indexes

  if game.answers_riddle(CurrentGame.value_indexes) < game.answers.length
    erb(:failure)
  else
    erb(:success)
  end

end
