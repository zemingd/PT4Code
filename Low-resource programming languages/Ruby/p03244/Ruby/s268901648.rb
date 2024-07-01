tmp = []
while line = $stdin.gets
  tmp << line.chomp.split
end

N = tmp[0][0].to_i # 偶数
arr = tmp[1].map(&:to_i)

gusu_arr = arr.each_with_index.select{|_, i| i%2 == 0}.map{|e| e[0]}
odd_arr = arr.each_with_index.select{|_, i| i%2 != 0}.map{|e| e[0]}


h_gusu = Hash.new(0)
gusu_arr.each do |elem|
  h_gusu[elem] += 1
end
h_gusu_sorted = Hash[ h_gusu.sort_by{ |_, v| -v } ]

elm1 = h_gusu_sorted.first[0]

h_odd = Hash.new(0)
odd_arr.each do |elem|
  h_odd[elem] += 1
end
h_odd_sorted = Hash[ h_odd.sort_by{ |_, v| -v } ]

elm2 =  h_odd_sorted.first[0]

count = 0

if elm1 == elm2
  count += 1
  elm2 = h_odd_sorted[1][0]
  arr[1] = -1
end

arr.each_with_index do |v, i|
  count += 1 if i % 2 == 0 && v != elm1
  count += 1 if i % 2 != 0 && v != elm2
end

p count
