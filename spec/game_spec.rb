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

  context 'step 0-0' do
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

  context 'step 0-2' do
    before do
      $stdin = StringIO.new("fjlskafjklds;af")
    end

    after do
      $stdin = STDIN
    end

    it 'should not accept random characters' do
      @game.get_answer0
      expect{@game.show_answer0}.to output("Please answer 0 or 1.\n").to_stdout
    end
  end

  context 'step 1-0' do
    before do
      $stdin = StringIO.new("0\n")
    end

    after do
      $stdin = STDIN
    end

    it 'should be able to chase the robber' do
      @game.get_answer1
      expect{@game.show_answer1}.to output("You chase the robber across Lake Michigan and you see his boat and so you look
      through it to see if you can find your stuff, but you unfortunately don\'t find the stuff.  \nYou finally find the robber and your stuff and it turns out that the robber was your brother who had lost all his money in a bet and decided to be a robber without telling anybody. You turn him in and you get all of your stuff back.\n").to_stdout
    end
  end

  context 'step 1-1' do
    before do
      $stdin = StringIO.new("1\n")
    end

    after do
      $stdin = STDIN
    end

    it 'should show to be finished' do
      @game.get_answer1
      expect{@game.show_answer1}.to output("To be finished\n").to_stdout
    end
  end

  context 'step 1-2' do
    before do
      $stdin = StringIO.new("fjlskafjklds;af")
    end

    after do
      $stdin = STDIN
    end

    it 'should not accept random characters' do
      @game.get_answer1
      expect{@game.show_answer0}.to output("Please answer 0 or 1.\n").to_stdout
    end
  end
end
