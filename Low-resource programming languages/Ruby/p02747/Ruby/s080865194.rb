s = gets.chomp
nets = s.gsub(/hi/, '')
if nets.length == 0
  puts "Yes"
else
  puts "No"
end