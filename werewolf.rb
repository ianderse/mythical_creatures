class Werewolf
    attr_reader :name, :location, :state

    def initialize(name, location="London", state="human")
      @name = name
      @location = location
      @state = state
    end

    def human?
        state == "human"
    end

    def change!
      state == "human" ? @state = "werewolf" : @state = "human"
    end

    def werewolf?
      state == "werewolf"
    end
end
