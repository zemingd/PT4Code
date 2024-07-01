n = gets.chomp.to_i
pay = 100000

for i in 1..n
  pay += pay*0.05
  pay = pay.ceil(-3)
end

puts pay
