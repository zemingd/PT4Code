a, b, c, = gets.split.map(&:to_i)
if a == b
  if a != c || b != c
    print("Yes")
  end
elsif b == c
  if b != a || c != a
    print("Yes")
  end
elsif c == a
  if c != b || a != b
    print("Yes")
  end
else
  print("No")
end
