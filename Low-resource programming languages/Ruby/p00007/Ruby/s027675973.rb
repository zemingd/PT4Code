week = gets
bet = 100000
for i in 1..week.to_i
  bet *= 1.05
  bet = ((bet*(0.001)).ceil)*1000
  puts bet
end