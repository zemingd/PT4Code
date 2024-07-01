S, T = gets.chop.split(" ")
A, B = gets.chop.split.map(&:to_i)
U = gets.chomp

if U == S
  	C = A - 1 
	puts "#{C} #{B}"
else U == T
	D = B - 1
  	puts "#{A} #{D}"
end