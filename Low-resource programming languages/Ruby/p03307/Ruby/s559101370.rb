N = gets.to_i  # gcd 最大公約数 lcm 最小公約数

if N.even?
  puts N  # 偶数
else
  puts 2 * N　# 奇数ならば2を掛けた数が最小公倍数
end