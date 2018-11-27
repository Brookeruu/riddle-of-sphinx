class CurrentGame

  attr_accessor(:answers, :current_riddle)
  attr_reader(:riddles)

  def initialize
    @riddles = {
      'human' => 'What walks on four legs in the morning, two during the day, and three legs in the evening?',
      'river' => 'I have a mouth but do not speek, I have a bed but do not sleep, I run every were but go know were, what am I?',
      'map' => 'I have streets, but no pavement. I have cities, but no buildings. I have forests, yet no trees. I have rivers, yet no water.' ,
    }
    @answers = ['','','']
    @current_riddle = @riddles.keys[0]
  end

  def answers_riddle()
    correct_answers = 0
    @answers.each_with_index do |answer, i|
      if @riddles.keys[i] == answer.downcase
        correct_answers += 1
      end
    end
    correct_answers
  end




end
