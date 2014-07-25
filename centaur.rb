class Centaur
  attr_reader :name, :breed, :disposition, :sit_stand

  def initialize(name, breed, disposition="not cranky", sit_stand="standing")
    @name = name
    @breed = breed
    @disposition = disposition
    @sit_stand = sit_stand
    @counter = 0
  end

  def shoot
    @counter += 1
    cranky? || laying? ? "NO!" : "Twang!!!"
  end


  def run
    @counter += 1
    cranky? || laying? ? "NO!" : "Clop clop clop clop!!!"
  end

  def cranky?
   @counter >= 3
  end

  def standing?
    sit_stand == "standing"
  end

  def laying?
    sit_stand == "laying"
  end

  def sleep
    standing? ? "NO!" : begin @counter = 0; @disposition = "not cranky" end
  end

  def lay_down
    @sit_stand = "laying"
  end

  def stand_up
    @sit_stand = "standing"
  end
end
