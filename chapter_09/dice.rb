class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat number
    if (number >= 0) and (number <=6 )
      @numberShowing = number
    else
      puts 'Wrong number for dice, enter it between 0 and 6'
    end
  end

end

die = Die.new
puts die.showing
die.cheat 7
puts die.showing