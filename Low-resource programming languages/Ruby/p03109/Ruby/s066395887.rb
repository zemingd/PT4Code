s = gets.chomp.split('/').map(&:to_i)
if s[0]>=2020
  puts "TBD"
elsif s[1]>4
  puts "TBD"
elsif s[2]>30
  puts "TBD"
else
  puts "Heisei"
end