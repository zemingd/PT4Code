S = gets.chomp
p S
pos = S.count('o')
p pos
if pos == 1
  p "800円"
elsif pos == 2
  p "900円"
elsif pos == 3
  p "1000円"
else
  p "700円"
end