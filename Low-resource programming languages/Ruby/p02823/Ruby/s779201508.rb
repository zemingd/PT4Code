n, a, b = gets.split(" ").map(&:to_i)
result = 0

if (a - b).abs % 2 == 0
  result = (a - b).abs / 2
else
  if a < b
    result = a
  else
    result = b
  end
end

puts result