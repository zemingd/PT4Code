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
elm1_num = h_gusu_sorted.first[1]

h_odd = Hash.new(0)
odd_arr.each do |elem|
  h_odd[elem] += 1
end
h_odd_sorted = Hash[ h_odd.sort_by{ |_, v| -v } ]

elm2 =  h_odd_sorted.first[0]
elm2_num = h_odd_sorted.first[1]

count = 0

elm_new = -1 
h_odd_sorted.each_with_index do |obj , i|
  if i == 1
    elm_new = obj[0] 
  end
end

if elm1 == elm2
  if elm2_num > elm1_num
    elm1 = elm_new
    count += 1 if arr[0] != elm_new
        arr[0] = elm_new
  else
    elm2 = elm_new
    count += 1 if arr[1] != elm_new
    arr[1] = elm_new
  end
end

arr.each_with_index do |v, i|
  count += 1 if i % 2 == 0 && v != elm1
  count += 1 if i % 2 != 0 && v != elm2
end

p count
