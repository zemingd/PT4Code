n_month = gets
n_month.chomp!

money = 100000
rate = 1+0.05

n_month.to_i.times do
  money = money * rate
  money = (money/1000).ceil*1000
end

puts money