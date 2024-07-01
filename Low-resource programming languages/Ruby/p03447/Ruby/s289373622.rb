def isExactPay( a, b, c, amount)
  500*a + 100*b + 50*c == amount
end

a = gets.chomp.to_i + 1
b = gets.chomp.to_i + 1
c = gets.chomp.to_i + 1
x = gets.chomp.to_i
way_num = 0
(0..a).each do |num_500|
  (0..b).each do |num_100|
    (0..c).each do |num_50|
      way_num += 1 if isExactPay(num_500, num_100, num_50, x)
    end
  end
end
print("#{way_num}")
