require "pry"

class Cat
  attr_reader :name, :mood
  attr_accessor :owner
  @@all = [] 
  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
    owner.cats << self
  end

  def mood=(value)
    @mood = value
  end

  def Cat.all
    @@all
  end
end