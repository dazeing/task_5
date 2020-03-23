require 'oop'

describe 'Dog, Cat, Cow, Person' do
    before(:each) do
        @pet = Pet.new
        @dog = Dog.new
        @cat = Cat.new
        @cow = Cow.new
        @person = Person.new(@pet)
    end

    it 'creates classes' do
        expect(@pet).to be_kind_of(Pet)
        expect(@dog).to be_kind_of(Dog)
        expect(@cat).to be_kind_of(Cat)
        expect(@cow).to be_kind_of(Cow)
        expect(@person).to be_kind_of(Person)
    end 

    it 'has voice method' do
        expect(@pet).to respond_to(:voice)
        expect(@dog).to respond_to(:voice)
        expect(@cat).to respond_to(:voice)
        expect(@cow).to respond_to(:voice)
    end

    it 'prints right voice' do
        expect do
            @person.play
        end.to output('Voice!').to_stdout
    end
end