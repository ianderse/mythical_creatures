class Dragon

  attr_reader :name, :rider, :color, :disposition

  def initialize(name, color, rider, disposition="hungry")
    @name = name
    @rider = rider
    @color = color
    @disposition = disposition
    @counter = 0
  end

  def hungry?
    @counter < 3
  end

  def eat
    @counter += 1

    hungry? ? disposition = "hungry" : disposition = "not hungry"

  end
end
