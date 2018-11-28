require 'rspec'
require 'pry'
require 'riddle'

describe('#riddle') do
  it('answer() allows you to change your answers') do
    test_game = CurrentGame.new()
    expect(test_game.answers[0] = "Human").to(eq("Human"))
  end

  it('answer_riddle() returns the number of correct answers') do
    test_game = CurrentGame.new()
    expect(test_game.answers_riddle).to(eq(0))
    test_game.answers[0] = "Human"
    expect(test_game.answers_riddle).to(eq(1))
  end

  it('self.random_riddles() generates an array of three non repeating index numbers') do
    test_game = CurrentGame.new()
    tester = CurrentGame.random_riddles(test_game.riddles.keys.length)
    expect(0<=tester[2] && tester[2]<test_game.riddles.keys.length).to(eq(true))
    expect(tester.length).to(eq(3))
  end

  it('make_hint() turns a hint key into a "hint" version: "hint" => "h---"') do
    test_game = CurrentGame.new()
    expect(test_game.make_hint(0)).to(eq("h----"))
  end

end
