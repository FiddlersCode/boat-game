class Game
  def ask_name
    puts 'What is your name?'
    name = gets.chomp
    puts 'Your name is ' + name + '.'
  end

  def question0
    puts 'There is a storm.  Would you like to go home or stay on the water and try to get to Beaver Island for your party?'
    puts 'Please press 0 or 1.'
    @answer = gets.chomp
  end

  def answer0
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
      puts 'this'
    elsif @answer == '1'
      puts 'that'
    else
      puts 'Please answer 0 or 1.'
    end
  end
end

@game = Game.new
@game.ask_name
@game.question0
@game.answer0
