class Hydra
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eat(target)
    target.destroyed = true
  end

end

class Ship
  attr_accessor :destroyed

  def initialize(name)
    @name = name
    @destroyed = false
  end

  def eaten?
    @destroyed ? true : false
  end
end
