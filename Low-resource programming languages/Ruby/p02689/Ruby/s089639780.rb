n, m = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
miti = Array.new(n,0)
m.times do 
	a, b = gets.chomp.split.map{|ngo| ngo.to_i - 1}
	miti[a] = [miti[a], arr[b]].max
	miti[b] = [miti[b], arr[a]].max
end
cnt = 0
n.times do |i|
	cnt += 1 if arr[i] > miti[i]
end
puts cnt

