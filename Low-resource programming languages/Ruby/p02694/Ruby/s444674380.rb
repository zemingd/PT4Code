mokuhyou = gets.to_i
yokin = 100
@num = 0
while yokin <= mokuhyou do
  risi = yokin * 0.01
  yokin += risi.floor
  @num += 1
  
end 
  puts @num