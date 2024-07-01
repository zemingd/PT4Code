n = gets.split("/").map(&:to_i)
if n[0] <= 2018 || (n[0] == 2019 && n[1] <= 4)
  puts "Heisei"
else
  puts "TBD"
end
