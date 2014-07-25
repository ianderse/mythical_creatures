class Pirate
  attr_reader :name, :job, :disposition

  def initialize(name, job="Scallywag", disposition="not cursed")
    @name = name
    @job = job
    @disposition = disposition
    @counter = 0
  end

  def cursed?
    @counter >= 3
  end

  def commit_heinous_act
    @counter += 1

    cursed? ? disposition="cursed" : disposition = "not cursed"
  end
end
