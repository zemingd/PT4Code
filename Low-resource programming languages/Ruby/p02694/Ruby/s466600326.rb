x = gets.to_i
bank = 100
cnt = 0

while bank < x
  bank = (bank * 1.01).to_i
  cnt += 1
end
puts cnt
