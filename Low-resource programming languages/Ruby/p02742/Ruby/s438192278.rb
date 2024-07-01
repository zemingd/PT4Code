h, w = gets.split(" ").map(&:to_i)
if h == 1 || w == 1
  puts 1
elsif (h * w) % 2 == 0 
  puts h * w / 2
elsif
  puts ((h * w) - 1) / 2 + 1
end