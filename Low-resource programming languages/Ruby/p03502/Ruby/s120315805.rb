N = gets.chomp!

x = 0
N.each_char do |n|
  x += n.to_i
end

puts N.to_i % x == 0 ? "Yes" : "No"
