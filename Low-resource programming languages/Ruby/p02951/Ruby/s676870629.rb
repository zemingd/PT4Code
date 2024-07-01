a,b,c = gets.chomp.split(" ").map(&:to_i)

kekka = c - (a-b)
if kekka <= 0
  puts 0
else
  puts kekka
end