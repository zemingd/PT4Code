a,b,c = gets.chomp.split.map(&:to_i)
count = 0
loop do
  break if count == c || b < a
  count += 1
  b = b - a
end
puts count
