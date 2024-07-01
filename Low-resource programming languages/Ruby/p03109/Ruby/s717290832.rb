s = gets.chomp
s = s.delete("/").to_i
if s > 20190430
  puts "TBD"
else
  puts "Heisei"
end