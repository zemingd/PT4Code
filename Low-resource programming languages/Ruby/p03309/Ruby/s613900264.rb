n=gets.chomp.to_i
arr=gets.chomp.split(" ").map{|i|i.to_i}
arr.map{}

arr_sum = arr.reduce{|sum,x| sum+x}
diff = (n+1) * (n/2) + n/2 + 1
b = (arr_sum-diff)/n
res = 0
arr.each_with_index do |node, i|
  tmp = node-(b+i+1)
  res += tmp.abs
end

puts arr_sum, diff, b, res
