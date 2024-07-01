def dictionary_sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length == 0
  min = unsorted_array.pop
  tmp = []
  unsorted_array.each do |item|
    if item.upcase < min.upcase
      tmp.push(min)
      min = item
    else
      tmp.push(item)
    end
  end
  sorted_array.push(min)
  recursive_sort(tmp, sorted_array)
end

count = gets.to_i

restaurant_list = []
count.times do
  element = gets.split(' ')
  restaurant_list.push([element[0], element[1].to_i])
end
restaurant_names = restaurant_list.map{|e| e[0]}
dic_sort = dictionary_sort(restaurant_names)
overlap_e = dic_sort.select{ |e| dic_sort.count(e) > 1 }.uniq

dic_sort_index = []
i = 0
while i <= count - 1
  if overlap_e.include?(dic_sort[i])
    overlap_list = restaurant_list.select{|re| re[0] == dic_sort[i]}.sort {|a, b| b[1] <=> a[1] }
    overlap_list.each do |overlap|
      dic_sort_index.push(restaurant_list.index(overlap) + 1)
    end
    i += overlap_list.count
  else
    dic_sort_index.push(restaurant_names.index(dic_sort[i]) + 1)
    i += 1
  end 
end 

dic_sort_index.each{|e| puts e}

