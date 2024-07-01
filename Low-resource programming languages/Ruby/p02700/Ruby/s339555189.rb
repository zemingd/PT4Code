a,b,c,d = gets.chomp.split.map(&:to_i)

if (c / d).ceil < (a /d).ceil
  puts "Yes"
else
  puts "No"
end