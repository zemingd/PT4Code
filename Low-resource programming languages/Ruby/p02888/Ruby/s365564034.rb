# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
d = gets.chop.split.map(&:to_i).sort
count = 0

d.combination(3) { |a, b, c|
  if c < a + b
    count += 1
  end
}

puts count
