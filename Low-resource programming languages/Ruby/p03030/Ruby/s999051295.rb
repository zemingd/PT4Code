N = gets.to_i
R = Array.new(N).map{Array.new(2)}
for i in 0..N-1
 R[i][0],R[i][1] = gets.chomp.split(" ");
end
_sort = R.sort_by {|x| x[1].to_i}.reverse.sort_by {|x| [x[0], i += 1]}
for i in 0..N-1
 m = R.index(_sort[i])
  puts m+1
end