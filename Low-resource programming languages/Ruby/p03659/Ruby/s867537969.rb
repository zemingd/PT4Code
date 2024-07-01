n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = a.inject(:+)
sa = 1000000000
count  = 0
a.each_with_index do |i,j|
	count += i
    tmp = ans -  count
    # puts "UU"
    # p count
    # p ans
    # puts "II"
    all = tmp - count
  	if j != n - 1
        sa = [sa,all.abs].min
    end
end
puts sa
