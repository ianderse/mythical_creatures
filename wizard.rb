class Wizard
  attr_reader :name, :bearded
  def initialize(name, options = {} )
      @name = name
      @bearded = options.fetch(:bearded, true)
  end

  def bearded?
    bearded == true
  end


  def incantation(spell)
    "sudo #{spell}"
  end

end
