N,K=gets.chomp.split(' ').map{|n| n.to_i}
A=gets.chomp.split(' ').map{|n| n.to_i}
# 200000マンはおK
T=Array.new(200000) { |i| 0 }
A.each{|i|
	T[i] += 1
}
# 順序つきキューに入れる
T = T.reject{|i| i == 0}.sort
l = T.size
if(l <= K)
	puts 0
else
	puts T[0..(l-1-K)].inject(0){|sum, n| sum + n}
end
