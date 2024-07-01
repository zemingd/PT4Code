X = gets.to_i
A = gets.to_i
B = gets.to_i

X2 = X-A-((X-A)%B)
puts X-A-X2