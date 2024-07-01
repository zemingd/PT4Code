n = gets.chomp.to_f
tptt = []
5.times do
  tptt.push(gets.chomp.to_i)
end

p (n / tptt.min).ceil + 4