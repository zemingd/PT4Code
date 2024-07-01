x = gets.chomp.to_s.scan(/9/)
if x.length != 0
  puts "Yes"
  exit
end
puts "No"
