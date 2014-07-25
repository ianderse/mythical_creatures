class Vampire
  attr_accessor :name, :pet, :disposition

  def initialize(name, pet="bat", disposition="thirsty")
    @name = name
    @pet = pet
    @disposition = disposition

  end

  def thirsty?
    disposition == "thirsty"
  end

  def drink
    @disposition = "not thirsty"
  end
end
