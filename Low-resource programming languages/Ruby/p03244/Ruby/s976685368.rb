tmp = []
while line = $stdin.gets
  tmp << line.chomp.split
end

N = tmp[0][0].to_i # 偶数
arr = tmp[1].map(&:to_i)

count = 0
elm_1 = arr[0]
elm_2 = arr[1]
if elm_1 == elm_2
 arr[1] = -1
  count += 1
end

arr.each_with_index do |v, i|
  next if i < 2
  count += 1 if v != arr[i-2]
end

p count
