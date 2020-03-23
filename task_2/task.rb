require "digest"

word = "Hello World"

10.times do

    word = Digest::MD5.hexdigest(word) 

end 

number = word.to_i(16) % 11 

2 ** number 

# 1. On 5th step of iteration var word will contain "9fd50b367e31bbeecf46dfda2d176e6c"
# 2. number var will contain => 1
# 3. The result of evaluating word.to_i(16) will be => 80347102740802061286722742632214585741
# 4. The final result will be => 2