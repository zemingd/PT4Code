tab = gets.strip.map(&:to_i).sort
if tab[0] == 5 && tab[1] == 5 && tab[2] == 7
  puts "Yes"
else 
puts "No"
end