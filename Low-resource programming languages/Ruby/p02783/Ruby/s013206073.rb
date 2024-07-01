h, a = gets.chomp.split.map(&:to_i)
count = 0
while h >= 0
  h -= a
  count += 1
end
puts "#{count}"
