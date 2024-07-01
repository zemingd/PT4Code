yyyy, mm, dd = gets.chomp.split('/').map(&:to_i)
if mm <= 4 || (mm == 4 && dd == 30)
  puts "Heisei"
else
  puts "TBD"
end
