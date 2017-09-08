class Game

  attr_reader :name

  def play_game
    self.ask_name
    self.get_name
    self.show_name
    self.ask_question0
    self.get_answer0
    self.show_answer0
    self.answer_question0
    self.answer0
    self.question1
  end

  def ask_name
    puts 'What is your name?'
  end

  def get_name
    @name = $stdin.gets.chomp
  end

  def show_name
    puts 'Your name is ' + @name + '.'
  end

  def ask_question0
    puts 'There is a storm.  Would you like to go home or stay on the water and try to get to Beaver Island for your party?'
    puts 'Please press 0 or 1.'
  end

  def get_answer0
    @answer = $stdin.gets.chomp
  end

  def show_answer0
    if @answer == '0'
      puts 'While you were gone, you were robbed! The robber had actually sailed right past you to go to the shore that you did not go to.'
    elsif @answer == '1'
      puts 'You go to the party on Beaver Island and break your legs dancing.'
    else
      puts 'Please answer 0 or 1.'
    end
  end

  def question1
    puts 'the robber had accidentally left one credit card, would you like to go after the robber or try to replace all the stolen stuff?'
    @answer = gets.chomp
  end

  def answer1
    if @answer == '0'
      puts 'You chase the robber across Lake Michigan and you see his boat and so you look
      through it to see if you can find your stuff, but you unfortunately don\'t find the stuff.'
      puts 'You finally find the robber and your stuff and it turns out that the robber was your brother who had lost all his money in a bet and decided to be a robber without telling anybody. You turn him in and you get all of your stuff back.'
    elsif @answer == '1'
      puts 'that'
    else
      puts 'Please answer 0 or 1.'
    end
  end
end
