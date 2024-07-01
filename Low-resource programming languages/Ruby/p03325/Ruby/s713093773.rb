# 配列の中がすべて奇数になるまでの試行回数最大値を求める
N = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

if arr.all?{|v| v % 2 != 0}
  puts 0
  return
end


def exec arr, count
  arr.sort!.reverse!
  flag = false
  arr.map!{|v| v * 3}
  if arr.all?{|v| v % 2 != 0}
    puts count
    return
  end
  left_even_index = arr.find_index(){|v| v % 2 == 0 }
  arr[left_even_index] = arr[left_even_index] / 3 / 2
  count += 1
  exec arr, count
#   arr.each_with_index do |v, index|
#     if v % 2 == 0 && flag == false
#       arr[index] = v / 2
#       flag = true
#     else
#       arr[index] = v * 3
#     end
#   end
#   if flag
#     count += 1
#     exec arr, count
#   else
#     puts count
#   end
end

exec arr, 0
