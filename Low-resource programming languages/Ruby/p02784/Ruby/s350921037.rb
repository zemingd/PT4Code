# set
h,n = gets.chomp.split(" ").map(&:to_i)
attak_arr = gets.chomp.split(" ").map(&:to_i)
sum_attak = 0

# main
0.upto(n - 1) do |i|
  sum_attak += attak_arr[i]
end

print ("Yes\n")if sum_attak >= h
print ("No\n") if sum_attak < h