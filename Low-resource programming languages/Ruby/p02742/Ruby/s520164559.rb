h, w = gets.chomp.split.map(&:to_i)
if (h == 1 || w == 1 )
  puts "1"
else
  puts "#{(h * w / 2.0).round}"
end
