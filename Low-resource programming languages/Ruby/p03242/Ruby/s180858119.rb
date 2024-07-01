tmp = []
while line = $stdin.gets
  tmp << line.chomp.split
end

N = tmp[0][0].to_i # 偶数
arr = tmp[1].map(&:to_i)

count = arr.size / 2
elm_1 = arr[0]
elm_2 = arr[1]
p count if elm_1 == elm_2
exit

arr.each_with_index do |v, i|
  break if i == arr.size / 2
  count -= 1 if v == arr[i+2]
end

p count