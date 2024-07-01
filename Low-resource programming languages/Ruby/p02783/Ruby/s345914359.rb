h, a = gets.split.map(&:to_i)

count = 0
loop do
  h -= a
  count += 1
  if h < 0
    break
  end
end

puts count