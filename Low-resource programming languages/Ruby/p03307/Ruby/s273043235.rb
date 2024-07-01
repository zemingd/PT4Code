n = gets.chomp.split.map(&:to_i) # gcd 最大公約数 lcm 最小公約数
# 
if n % 2 == 0
  puts n　　# 偶数
else
  puts 2 * n # 奇数ならば2を掛けた数が最小公倍数
end