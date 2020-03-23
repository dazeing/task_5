class Numbers
	def fibonacci(n)
		return n if n == 0 || n == 1
		return puts "Number must be positive" if n < 0
		return (fibonacci(n - 1) + fibonacci(n - 2)) 
	end

	def power(n)
		return puts (2 ** n) if n == 0
		if n > 0
			for i in 0..n do
				print (2 ** i).to_s + " "
			end
		else
			for i in n..0 do
				print (2 ** i).to_s + " "
			end
		end
	end
end

fibonacci = Numbers.new
n = 7
puts "fibonacci: "
puts fibonacci.fibonacci(n).to_s

power = Numbers.new 
n = 5
puts "powers of 2: "
power.power(n)