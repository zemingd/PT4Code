s = gets.chomp.gsub("/", "").to_i
if s <= 20190430
  puts "Heisei"
else
  puts "TDB"
end
