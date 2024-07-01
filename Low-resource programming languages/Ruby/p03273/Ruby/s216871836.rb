h,w = gets.chomp.split.map(&:to_i)
arr = []
h.times{arr << gets.chomp.split("")}
arr2 =[]
arr.each do |l|
  if l.include?(".")
    arr2 << l
  end
end

i_arr = []
arr2.each do |v|
  (0..(w-1)).each do |i|
    if v[i] == "."
      i_arr << i
    end
  end
end

i_arr = i_arr.select {|num| i_arr.count(num) == arr2.count}.uniq
i_arr2 = (0..(w-1)).to_a - i_arr

arr2.each do |arr|
  ar = []
  i_arr2.each do |i|
    ar[i] = arr[i]
  end
 puts ar.join
end