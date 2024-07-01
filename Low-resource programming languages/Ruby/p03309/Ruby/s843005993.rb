n=gets.chomp.to_i
arr=gets.chomp.split(" ").map{|i|i.to_i}

# b導出時には正値に正規化
max = arr.max
arr_sum = arr.reduce{|sum,x| sum+x}
arr_sum += max * n
diff = (n+1) * (n/2) + n/2 + 1
b = (arr_sum-diff)/n - max

res1 = 0
arr.each_with_index do |node, i|
  tmp = node-(b+i+1)
  res1 += tmp.abs
end

=begin
res2 = 0
arr.each_with_index do |node, i|
  tmp = node-(b+i)
  res2 += tmp.abs
end
=end

res2 = 0
arr.each_with_index do |node, i|
  tmp = node-(b+i+2)
  res2 += tmp.abs
end

puts [res1,res2].min

