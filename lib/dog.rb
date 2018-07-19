require'pry'
class Dog
  attr_reader :name
  @@all = []
  @@names = []

  def initialize(name)
    @name = name
    @@names << @name
    @@all << self
  end
  
  def self.all
    @@names.uniq.collect {|x| puts x}
  end
 
  def self.clear_all
    @@all.clear
  end
  
end

