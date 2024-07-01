a, b = gets.split.map(&:to_i)

if (a - b) < 0
  state = "a < b"
elsif 0 < (a - b)
  state = "a > b"
else
  state = "a = b"
end

puts state