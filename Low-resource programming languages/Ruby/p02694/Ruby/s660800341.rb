n = gets.to_i
deposit = 100
for i in 1..10000
  interest = (deposit * 0.01 * 1).floor
  deposit += interest
  if deposit >= n
    puts i
    break
  end
end