class Cat
  # code goes here
    attr_reader :name, :owner, :mood
    attr_writer :mood, :owner
    @@all = []
    def initialize(name,owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@all << self
      owner.cats << self
    end

    def Cat.all
      @@all
    end
end