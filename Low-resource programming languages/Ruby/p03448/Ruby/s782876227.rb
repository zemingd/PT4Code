def isExactPay( a, b, c, amount)
  500*a + 100*b + 50*c == amount
end

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
way_num = 0
a.times do |num_500|
  b.times do |num_100|
    c.times do |num_50|
      way_num += 1 if isExactPay(num_500, num_100, num_50, x)
    end
  end
end
print("#{way_num}")
