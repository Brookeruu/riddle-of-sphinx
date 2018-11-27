require 'rspec'
require 'pry'
require 'riddle'

describe('#riddle') do
  it('allows you to change your answer') do
    test = CurrentGame.new()
    expect(test.answer = "Human").to(eq("Human"))
  end

  it('return true or false if answer matches value to riddle key') do
    test = CurrentGame.new()
    expect(test.answer_riddle(0)).to(eq(false))
    test.answer[0] = "Human"
    expect(test.answer_riddle(0)).to(eq(true))
  end




end
