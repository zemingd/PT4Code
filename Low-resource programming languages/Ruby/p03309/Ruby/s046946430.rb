N = gets.to_i
A = gets.split.map(&:to_i)
B = A.each_with_index.map{|v,i| v - (i + 1) }.sort
b = B[N/2]
puts B.inject(0){|s,v| s + (v-b).abs}
