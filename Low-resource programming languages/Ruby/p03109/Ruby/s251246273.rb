s = gets.chomp
day = s.delete("/")

if day.to_i <= 20190430
  puts "Heisei"
else
  puts "TBD"
end