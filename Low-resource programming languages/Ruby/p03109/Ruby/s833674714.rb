y, m, d = gets.chomp.split("/").map(&:to_i);
if y < 2019 || (y = 2019 && m <= 4)
  puts "Heisei"
else
  puts "TBD"
end