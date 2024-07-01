n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = a.inject(:+)
sa = 10000000000000000000000000000
count  = 0
a.each_with_index do |i,j|
	count += i
    tmp = ans -  count
    all = tmp - count
  	if j != n - 1
        sa = [sa,all.abs].min
    end
end
puts sa
