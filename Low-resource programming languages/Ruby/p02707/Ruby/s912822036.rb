N = gets.chomp.to_i               # 単一整数
ary = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
N.freeze

#newary = ary.uniq

for num in 1..N do
  puts ary.count(num)
end