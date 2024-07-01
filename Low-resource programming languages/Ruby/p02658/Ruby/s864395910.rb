N = gets.chomp.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
N.freeze
ans = a[0]
H = 10 ** 18
H.freeze

for num in 1..N-1 do
  ans = ans * a[num]
end

if ans > H then
  puts "-1"
else
  puts ans
end