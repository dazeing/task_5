class Pet
    def voice
        puts "Voice!" 
    end
end

class Dog < Pet
    def voice
        puts "Woof!" 
    end
end

class Cat < Pet
    def voice
        puts "Meow!" 
    end
end

class Cow < Pet
    def voice
        puts "Moo!" 
    end
end

class Person
    attr_accessor :pet
    def initialize(pet)
        @pet = pet
    end
    def play
        @pet.voice
    end
end

cat = Cat.new
dog = Dog.new
person = Person.new(cat)
person.play
person.pet = dog
person.play