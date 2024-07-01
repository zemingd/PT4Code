w, h, x, y = gets.chomp.split(" ").map(&:to_i)

puts w * h / 2.to_f

if x.to_f == w / 2.to_f && y.to_f == h/2.to_f then
  puts "1"
else
  puts "0"
end