N = gets.to_i  # gcd 最大公約数 lcm 最小公約数

if N.odd?
  puts 2 * N  # 奇数ならば2を掛けた数が最小公倍数
else
  puts N　# 偶数
end