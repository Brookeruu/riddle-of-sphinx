require 'rspec'
require 'pry'
require 'riddle'

describe('#riddle') do
  it('allows you to change your answers') do
    test_game = CurrentGame.new()
    expect(test_game.answers[0] = "Human").to(eq("Human"))
  end

  it('returns the number of correct answers') do
    test_game = CurrentGame.new()
    expect(test_game.answers_riddle).to(eq(0))
    test_game.answers[0] = "Human"
    expect(test_game.answers_riddle).to(eq(1))
  end

  it('generate an array of three non repeating index numbers') do
    test_game = CurrentGame.new()
    tester = CurrentGame.random_riddles(test_game.riddles.keys.length)
    expect(0<=tester[2] && tester[2]<test_game.riddles.keys.length).to(eq(true))
    expect(tester.length).to(eq(3))
  end



end
