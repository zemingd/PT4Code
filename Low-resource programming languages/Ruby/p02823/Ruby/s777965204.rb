n, a, b = gets.split(" ").map(&:to_i)
result = 0

if (a - b).abs % 2 == 0
  result = (a - b).abs / 2
else
  if n - a < b - 1
    result = n - a
  else
    result = b - 1
  end
end

puts result