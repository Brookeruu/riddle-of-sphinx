class CurrentGame
  @@value_indexes = []

  attr_accessor(:answers, :current_riddle)
  attr_reader(:riddles)

  def initialize
    @riddles = {
      'human' => 'What walks on four legs in the morning, two during the day, and three legs in the evening?',
      'river' => 'I have a mouth but do not speek, I have a bed but do not sleep, I run every were but go know were, what am I?',
      'map' => 'I have streets, but no pavement. I have cities, but no buildings. I have forests, yet no trees. I have rivers, yet no water.' ,
      'shadow' => 'Everyone has me but nobody can lose me. What am I?',
      'soap' => 'You use me from your head to your toes, the more I work the thinner I grow. What am I?',
      'fire' => 'I am always hungry. I must be fed. Whatever I touch will soon turn red. What am I?'
    }

    @answers = ['','','']
  end

  def answers_riddle(value_indexes = [0,1,2])
    correct_answers = 0
    @answers.each_with_index do |answer, i|
      if @riddles.keys[value_indexes[i]] == answer.downcase
        correct_answers += 1
      end
    end
    correct_answers
  end

  def self.random_riddles(num_of_riddles)
    @@value_indexes = []
    until @@value_indexes.length == 3
      i = rand(num_of_riddles)
      if !@@value_indexes.include?(i)
        @@value_indexes.push(i)
      end
    end
    @@value_indexes
  end

  def self.value_indexes
    @@value_indexes
  end


end
