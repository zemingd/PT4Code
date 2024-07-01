date = gets.chomp.split("/")
if date[0].to_i > 2019
  puts "TBD"
elsif date[1].to_i > 5
  puts "TBD"
elsif date[2] == "31"
  puts "TBD"
else
  puts "Heisei"
end
  