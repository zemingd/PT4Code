a, b, c = gets.split.map(&:to_i)


if (a != b && a != c && b != c) || (a == b && b == c)
  ans = 'No'
else
  ans = 'Yes'
end

puts ans