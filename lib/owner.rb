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
      Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat
    Cat.new(name, self)
  end
  
  def buy_dog
    Dog.new(name, self)
  end
  
  
  
end