# https://atcoder.jp/contests/abc133/tasks/abc133_c

MOD = 2019

L, R = gets.split.map(&:to_i)

if R - L >= MOD
  puts 0
  exit
end

ans = 2019
(L...R).each do |i|
  ((i + 1)..R).each do |j|
    m = (i * j) % MOD
    if m == 0
      puts 0
      exit
    end
    ans = m if m < ans
  end
end

puts ans