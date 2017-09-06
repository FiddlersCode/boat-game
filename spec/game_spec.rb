require 'game'

describe Game do

  before(:each) do
    @game = Game.new
  end

  context 'setup' do
    it 'should ask the user name' do
      $stdin = 'Patrick'
      expect{@game.ask_name}.to output('Your name is Patrick.').to_stdout
    end
  end

  context 'step 0' do

    it 'should give context' do
      expect{@game.question0}.to output('There is a storm.  Would you like to go home or stay on the water and try to get to Beaver Island for your party?').to_stdout
    end


    it 'should ask be able to choose to go home' do
      $stdin = 0
      expect{@game.answer0}.to output('While you were gone, you were robbed! The robber had actually sailed right past you to go to the shore that you did not go to.').to_stdout
    end
  end
end
