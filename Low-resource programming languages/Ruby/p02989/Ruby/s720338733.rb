N = gets.to_i
d_tmp = gets
d = d_tmp.split(" ").map(&:to_i)
d_sort = d.sort
print d_sort[N/2] - d_sort[N/2-1]