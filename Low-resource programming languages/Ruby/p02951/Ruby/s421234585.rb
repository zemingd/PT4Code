a,b,c = gets.split.map(&:to_i)

result = (c - (a - b))

if result < 0
  result = 0
end

puts result