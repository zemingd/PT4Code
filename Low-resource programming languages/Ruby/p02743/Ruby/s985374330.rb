"
パナソニックプログラミングコンテスト2020 C問題
https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_c
"
EPS = 1e-14

a, b, c = gets.split.map(&:to_i)

if Math.sqrt(a) + Math.sqrt(b) + EPS < Math.sqrt(c)
  puts "Yes"
else
  puts "No"
end