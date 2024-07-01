N,K = gets.split(" ").map(&:to_i)
pi = gets.split(" ").map(&:to_i)
summax = 0
summax_p = 0
exp = 0
class Integer
	def expectNum
		return (self+1)*0.5
	end
end
for i in 0...N-K
	if pi[i...i+K].map(&:expectNum).inject(&:+) > summax
		summax = pi[i...i+K].map(&:expectNum).inject(&:+)
		summax_p = i
	end
end

puts summax