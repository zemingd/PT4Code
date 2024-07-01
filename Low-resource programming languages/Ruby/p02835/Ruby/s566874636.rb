if gets.chomp.split(' ').map(&:to_i).sum <= 21
  puts "win"
else
  puts "bust"
end