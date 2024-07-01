a = gets.split(" ").map{|b| b.to_i }
diff_min_i = 0
diff_min = 100
a.sort!.each_with_index do |n, i|
  break if i == a.size - 1
  if diff_min > a[i+1] - n
    diff_min = a[i+1] - n
    diff_min_i = i
  end
end
 
result = 0
a.sort.each_with_index do |n, i|
  next if i == diff_min_i
 
  result += n - a[i-1]
end
 
puts result