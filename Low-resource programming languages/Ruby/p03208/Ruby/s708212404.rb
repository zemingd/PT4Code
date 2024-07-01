n,k = gets.split.map &:to_i; h=[]
n.times do |i|
	h[i] = gets.to_i
end
h = h.sort; arr = Array.new(n-k+1)
arr.length.times do |i|
	arr[i] = h[i+k-1] - h[i]
end
puts arr.min
