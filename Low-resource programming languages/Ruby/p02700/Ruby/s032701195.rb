x, y, z, u = gets.chomp.split.map(&:to_i)
# 攻撃に耐えられる回数
a = (x / u).ceil
b = (z / y).ceil
if a >= b
  puts "No"
else
  puts  "Yes"
end
