# 配列の中がすべて奇数になるまでの試行回数最大値を求める
N = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

def all_odd? arr
  arr.all?{|v| v % 2 != 0} ? true : false
end

count = 0
while !all_odd? arr
  arr.sort!.reverse!
  arr.map!{|v| v * 3}
  left_even_index = arr.find_index(){|v| v % 2 == 0 }
  arr[left_even_index] = arr[left_even_index] / 3 / 2
  count += 1
end

puts count
