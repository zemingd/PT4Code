
n = gets.chomp.to_i

money = 100000

for i in 0..n
  money = money * 1.05
  if money % 1000 > 0
    money = money.ceil
  end
end

puts money

