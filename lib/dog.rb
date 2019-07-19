class Dog
    attr_reader :name, :owner, :mood
    attr_writer :mood, :owner
    @@all = []
    def initialize(name,owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@all << self
      owner.dogs << self
    end

    def Dog.all
      @@all
    end
end