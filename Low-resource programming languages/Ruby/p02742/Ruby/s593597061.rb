h,w = gets.chomp.split(" ").map(&:to_i)
if h > 1 && w > 1
  puts h*w/2 + ((h*w)%2)
else
  puts 1
end