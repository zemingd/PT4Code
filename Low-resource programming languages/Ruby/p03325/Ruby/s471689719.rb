# 配列の中がすべて奇数になるまでの試行回数最大値を求める
N = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

def single_check target
  count = 0
  while target % 2 == 0
    target = target / 2
    count += 1
  end
  count
end

arr.select!{|v| v % 2 == 0}
total = 0
arr.each do |target|
  total += single_check target
end

puts total
