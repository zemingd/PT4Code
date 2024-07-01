S, T = gets.chomp.split(" ")
A, B = gets.split(" ").map(&:to_i)
U = gets.chomp

if U == S
  a = A - 1

  puts("#{a} #{B}")
else
  b = B - 1

  puts("#{A} #{b}")
end