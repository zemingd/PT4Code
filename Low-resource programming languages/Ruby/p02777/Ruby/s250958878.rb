S, T = gets.chomp.split(" ")
A, B = gets.chomp.split(" ").map(&:to_i)
U = gets.chomp

a, b = A, B

if U == S then
  a -= 1
else
  b -= 1
end

puts "#{a} #{b}"