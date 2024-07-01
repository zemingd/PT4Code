# 配列の中がすべて奇数になるまでの試行回数最大値を求める
N = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
arr.select!{|v| v % 2 == 0}
total = 0
arr.each do |target|
  count = 0
  while target % 2 == 0
    target = target / 2
    count += 1
  end
  total += count
end

puts total
