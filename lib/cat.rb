require_relative '../config/environment.rb'


class Cat
  attr_reader :name
  attr_writer
  attr_accessor :mood, :owner

  @@all =[]

  def initialize(name, owner)
    @name=name
    @owner=owner
    @mood= "nervous"
    @@all << self
    
  end

  def self.all
    @@all
  end

end