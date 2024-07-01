a, b, c =gets.split
ans = 'No'
ans = 'Yes' if a == b && b != c
ans = 'Yes' if a == c && b != a
ans = 'Yes' if c == b && b != a
puts ans
