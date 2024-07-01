X = gets.chomp.to_i

A = 100
R = 0.01

def calc_total(n)
  A * R
end

amount = A
y = 0
while amount < X
   y += 1
   amount = (amount + amount * R).floor
   # puts "y=#{y}, amount=#{amount}"
end

puts y