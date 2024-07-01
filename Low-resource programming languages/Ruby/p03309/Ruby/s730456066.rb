n=gets.chomp.to_i
arr=gets.chomp.split(" ").map{|i|i.to_i}

max=arr.max
normalized_arr = arr.map{|n| n+=arr.max}
arr_sum = normalized_arr.reduce{|sum,x| sum+x}
diff = (n+1) * (n/2) + n/2 + 1
b = (arr_sum-diff)/n - max

res = 0
arr.each_with_index do |node, i|
  tmp = node-(b+i+1)
  res += tmp.abs
end

puts res
