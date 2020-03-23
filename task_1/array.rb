# First way to create array 
array = Array.[](0, 1, 2, 3, 4, 5)
# Second 
array = Array.new(6) { |e| e += 0 }
# Third 
array = [0, 1, 2, 3, 4, 5]
puts "array: "
print "#{array} \n" 
puts "length: "
puts array.length

def sum(array)
    sum = 0
    for i in array do
        sum += i
    end
    puts sum
end

puts "sum of array elements"
puts "first way"
puts array.sum

puts "second"
sum = 0
array.each do |i|
    sum += i
end
puts sum

puts "third"
puts array.inject(:+)

puts "fourth"
sum(array)

def array_concat(array)
   string = ""
   array.each do |i|
      string += i.to_s
   end 
   puts string
end

puts "Concatenate all array elements into one string"
array_concat(array)

puts "Increaseing by one"
array = array.map do |i|
    i + 1
end
print array