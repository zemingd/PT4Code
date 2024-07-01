n, a, b = gets.split(" ").map(&:to_i)
result = 0

if (a - b).abs % 2 == 0
  result = (a - b).abs / 2
else
  if a - 1 < n - b
    result = a
  else
    result = n - b + 1
  end
end

puts result