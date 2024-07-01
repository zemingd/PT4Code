x = gets.chomp.to_i
coin = 100
time = 0
while true do
  time += 1
  coin = (coin.to_f * 1.01).to_i
  break if x <= coin
end
puts time