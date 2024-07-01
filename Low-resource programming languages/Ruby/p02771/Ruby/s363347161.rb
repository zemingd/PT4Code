a, b, c, = gets.split.map(&:to_i)
if a == b && b != c
  print("Yes")
elsif b == c && c != a
  print("Yes")
elsif c == a && a != b
  print("Yes")
else
  print("No")
end
