s = gets.chomp
if s.split("/").join.to_i <= 20190430
    puts "Heisei"
else
    puts "TBD"
end
