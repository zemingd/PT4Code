N,K = gets.chomp.split(" ").map(&:to_i)
a,b = N.times.map{gets.split.map(&:to_i)}.transpose
arr = Array.new(N+1,0)
N.times do |i|
  arr[i+1] = arr[i] + b[i]
end
index = arr.bsearch_index{|x| x >= K}
puts a[index-1]