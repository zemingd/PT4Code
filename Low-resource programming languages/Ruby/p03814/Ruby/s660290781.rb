s = gets.chomp

a_index = 200_000
z_index = 0

s.each_char.with_index do |c, i|
  a_index = i if c == "A" && i <= a_index
  z_index = i if c == "Z" && i >= z_index
end

puts z_index - a_index + 1
