require 'game'

describe Game do

  context 'setup' do
    before do
      $stdin = 'Patrick'
    end

    after do
      $stdin = STDIN
    end

    it 'should ask the user name' do
      game = Game.new
      expect{game.ask_name}.to output('Your name is Patrick.').to_stdout
    end
  end

  context 'steps' do
    before do
      $stdin = 0
    end

    after do
      $stdin = STDIN
    end

    it 'should ask be able to choose to go home' do
      game = Game.new
      expect{game.step0}.to output('While you were gone, you were robbed! The robber had actually sailed right past you to go to the shore that you did not go to.').to_stdout
    end
  end
end
