N,M=gets.chomp.split(' ').map{|n| n.to_i}
L=Array.new(M) { |i|  }
R=Array.new(M) { |i|  }
for i in 0..(M-1)
	L[i],R[i]=gets.chomp.split(' ').map{|n| n.to_i}
end
puts "#{[L.max - R.min, 0].max}"
