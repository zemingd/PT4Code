n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(m, true)
n.times do 
	ngo = gets.chomp.split.map(&:to_i)
	ngo = ngo.slice(1,ngo.length-1)
	1.upto(m) do |i|
		arr[i-1] = false if ngo.index(i) == nil
	end
end
#p arr
puts arr.count{|a| a}
