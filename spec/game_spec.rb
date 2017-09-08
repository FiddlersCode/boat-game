require 'game'
require 'stringio'

describe Game do
  before(:each) do
    @game = Game.new
  end

  context 'setup' do
    before do
      $stdin = StringIO.new("Patrick\n")
    end

    after do
      $stdin = STDIN
    end

    it 'should ask the user name' do
      @game.get_name
      expect{@game.show_name}.to output("Your name is Patrick.\n").to_stdout
    end
  end

  context 'step 0' do
    before do
      $stdin = StringIO.new("0\n")
    end

    after do
      $stdin = STDIN
    end

    it 'should ask be able to choose to go home' do
      @game.get_answer0
      expect{@game.show_answer0}.to output("While you were gone, you were robbed! The robber had actually sailed right past you to go to the shore that you did not go to.\n").to_stdout
    end

    context 'step 0-1' do

      before do
        $stdin = StringIO.new("1\n")
      end

      after do
        $stdin = STDIN
      end

      it 'should be able to choose to go to Beaver Island' do
        @game.get_answer0
        expect{@game.show_answer0}.to output("You go to the party on Beaver Island and break your legs dancing.\n").to_stdout
      end
    end
  end
end
