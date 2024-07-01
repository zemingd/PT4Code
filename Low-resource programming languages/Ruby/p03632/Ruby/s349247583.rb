A,B,C,D = gets.chomp.split(' ').map(&:to_i)
result = 0
if A <= C && D <= B
  result = D - C
elsif A <= C && C <= B && B <= D
  result = B - C
end

puts result