=begin 
Difference between string and symbol
Symbols are immutable: Their value remains constant.
Multiple uses of the same symbol have the same object ID and are the same object compared to string which will be a different object with unique object ID, everytime.
=end
 
string = "Example" 
puts "Number of char in #{string} "
puts string.length

puts "Replacement "
puts string.gsub('a', 'b')

puts "Concatination"
puts "First way "
puts string + string
puts "Second way "
puts string.concat(string)

string = "This is the first way of creating here document ie. multiple line string. This is a comment. This is a comment, too."

def split_by_space(string) 
    puts "Amount of words: " + string.split(' ').size.to_s
end
def split_by_marks(string)
   puts "Amount of words: " + string.split(/\W+/).size.to_s
end

puts "delimiter is space char "
split_by_space(string)

puts "delimiter are punctuation marks "
split_by_marks(string)

