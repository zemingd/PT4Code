n = gets.chomp!.to_i
s = gets.chomp!

chs = s.chars

# 左の黒の数
memo = []
memo[0] = 0

# 右の白の数
memo2 = []
memo2[n - 1] = 0 

(n - 1).times do |i|
  memo[i + 1] = memo[i] + ((chs[i] == "#") ? 1 : 0)
end

(n - 1).downto(1) do |i|
  memo2[i - 1] = memo2[i] + ((chs[i] == ".") ? 1 : 0)
end

puts n.times.map {|i|
  memo[i] + memo2[i]
}.min
