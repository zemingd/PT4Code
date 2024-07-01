s = gets.chomp

y,m,d = s.split("/")

if y.to_i < 2019 || (y.to_i == 2019 && m.to_i < 5)
  puts "Heisei"
else
  puts "TBD"
end
