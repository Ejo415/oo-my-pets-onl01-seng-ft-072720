class Owner
  attr_reader :name, :species
  @@all = [] 
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all 
    @@all.clear
  end
  
  def say_species
   "I am a human."
  end
  
  def cats 
      cats.each.select {|cat| cat.owner == self}
  end
end