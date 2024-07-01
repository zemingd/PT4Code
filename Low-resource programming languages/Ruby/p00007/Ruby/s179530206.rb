File Edit Options Buffers Tools Ruby Help
n = gets.chomp.to_i

money = 100000

n.times do
  money = money * 1.05
  if money % 1000 > 0
    money = money.ceil(-3)
  end
end

puts money


