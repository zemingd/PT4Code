R = gets.chomp!
G = gets.chomp!
B = gets.chomp!
result = R.to_i*100 + G.to_i*10 + B.to_i

if result%4 == 0
  p 'YES'
else
  p 'NO'
end