#Creating hash 
#First way
hash = Hash.new "hash"
#Second 
hash = Hash[1 => "first", 2 => "second", 3 => "third", 4 => "fourth"]

#Printing keys
puts "Keys"
print hash.keys
puts "\nSecond way"
hash.each_key do |key|
    print key.to_s + " "    
end

#Printing values 
puts "\nValues"
print hash.values
puts "\nSecond way"
hash.each_value do |value|
    print value.to_s + " "    
end

#Swapping keys with values 
puts "\nBefore"
print hash
hash = hash.invert
puts "\nAfter"
print hash

def has_keys(hash)
    if hash.keys != []
        true
    else
        false
    end
end

hash1 = Hash.new
puts "\nPositive"
puts has_keys hash
puts "Negative"
puts has_keys hash1

