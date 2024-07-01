h,w = gets.chomp.split.map(&:to_i)

puts "#" * (w+2)
h.times do
  a = gets.chomp
  puts "#" + a + "#"
end
puts "#" * (w+2)