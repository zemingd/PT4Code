X = gets.to_i
a = X / 11
b = X % 11
c = if b == 0
  0
elsif b > 6
  2
else
  1
end
ans = a * 2 + c
puts ans
