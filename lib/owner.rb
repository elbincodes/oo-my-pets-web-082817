class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets


  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}

    ALL << self
  end

  def self.reset_all
    ALL.clear
  end

  def self.count
    ALL.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fishey)
    pets[:fishes]<<Fish.new(fishey)
  end

  def buy_cat(kitten)
    pets[:cats]<< Cat.new(kitten)
  end

  def buy_dog(puppy)
    pets[:dogs]<<Dog.new(puppy)
  end

  def walk_dogs
    pets[:dogs].each do |each_dog|
      each_dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |each_cat|
      each_cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |each_fish|
      each_fish.mood = "happy"
    end
  end

  def sell_pets
    (pets.values.flatten).each do |each_animal|
      each_animal.mood = "nervous"
      end
      pets.values.map do |each_animal|
        each_animal.clear
      end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
